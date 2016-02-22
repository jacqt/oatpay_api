class SocietiesController < ApplicationController
  require 'slack-notifier'

  before_action :set_society, only: [:show, :update]
  before_action :authenticate_society, only: [:update, :request_withdrawal]

  def create
    @society = Society.new(society_params)
    @society.auth_token = SecureRandom.hex(256)

    if @society.save
      render json: @society, status: 201, include: [:items], admin: true
    else
      render json: { status: "failure", errors: @society.errors }
    end
  end

  def show
    if @society.email == params[:email] and @society.auth_token == params[:auth_token]
      render json: @society, include: [:items], admin: true
    else
      render json: @society, include: [:items]
    end
  end

  def update
    @society.attributes = society_params
    if @society.save
      render json: @society, include: [:items], admin: true
    else
      render json: { status: "failure", errors: @society.errors }
    end
  end

  def request_withdrawal
    notifier = Slack::Notifier.new ENV["SLACK_WEBHOOK_URL"]
    notifier.ping "<!channel>: #{@society.name} has requested a withdrawal, and they have #{@society.balance.format}"
    render json: { status: "success" }
  end

  private

  def society_params
    params.require(:society).permit(:name, :email, :password, :password_confirmation, :nickname, :sort_code, :account_number)
  end

  def set_society
    @society = Society.where(nickname: params[:nickname]).first
    if @society.nil?
      render json: { status: "failure" }, status: 404 and return
    end
  end
end
