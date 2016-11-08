class PaymentsController < ApplicationController
  def client_token
    render json: { client_token: Braintree::ClientToken.generate }
  end

  def purchase
    @item = Item.find(params[:id])

    if @item.capacity != 0 and (@item.payments_count > @item.capacity)
      render json: { errors: { "item": "is sold out" } }, status: 400 and return
    end

    nonce = params[:nonce]

    result = Braintree::Customer.create(
      :email => params[:email],
      :credit_card => {
        :payment_method_nonce => nonce,
        :options => {
          :verify_card => true
        }
      },
    )

    if not result.success?
      render json: { error: result.message }, status: 400 and return false
    else
      customer = result.customer
    end

    amount = sprintf('%.2f', (@item.price_cents * 1.0365).ceil + 20)

    result = Braintree::Transaction.sale(
      :amount => amount,
      :customer_id => customer.id,
      :options => {
        :submit_for_settlement => true
      },
    )

    if result.success?
      @payment = @item.payments.build(payment_params)

      @payment.save!
      @item.society.balance += @item.price
      @item.society.save!
      render json: { data: { payment: @payment } }
    else
      render json: { error: result.message }, status: 400 and return false
    end
  end

  private

  def payment_params
    params.require(:payment).permit(:email)
  end
end
