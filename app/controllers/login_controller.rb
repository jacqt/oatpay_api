class LoginController < ApplicationController
  before_filter :authenticate_society, only: [:login_with_token]
  def login
    @society = Society.where(email: params[:email]).first
    if @society.nil? or not @society.authenticate(params[:password])
      render json: { status: "failure" }, status: 404 and return
    else
      render json: @society, include: [:items], admin: true
    end
  end

  def login_with_token
    render json: @society, include: [:items], admin: true
  end
end
