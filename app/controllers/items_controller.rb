class ItemsController < ApplicationController
  before_action :authenticate_society, only: [:create, :update, :destroy]
  before_action :set_item, only: [:update, :destroy]
  before_action :authorize_society, only: [:update, :destroy]

  def create
    @item = @society.items.build(item_params)
    @item.price = Money.new(item_params[:price])

    if @item.save
      render json: { data: { item: ItemSerializer.new(@item, admin: true).as_json } }, status: 201
    else
      render json: { status: "failure", errors: @item.errors }
    end
  end

  def update
    @item.attributes = item_params

    if item_params[:price]
      @item.price = Money.new(item_params[:price])
    end

    if @item.save
      render json: { data: { item: ItemSerializer.new(@item, admin: true).as_json } }
    else
      render json: { status: "failure", errors: @item.errors }
    end
  end

  def destroy
    if @item.destroy
      render json: { status: "success" }
    else
      render json: { status: "success" }, status: 404
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :capacity, :archived)
  end

  def set_item
    @item = Item.find(params[:id])
    if @item.nil?
      render json: { status: "failure" }, status: 401 and return
    end
  end

  def authorize_society
    if @item.society != @society
      render json: { status: "failure" }, status: 401 and return
    end
  end
end
