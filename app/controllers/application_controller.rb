class ApplicationController < ActionController::API
  include ActionController::Serialization
  def authenticate_society
    @society = Society.where(email: params[:email]).first
    if @society.nil?
      render json: { status: "failure" }, status: 401 and return
    else
      unless @society.auth_token == params[:auth_token]
        render json: { status: "failure" }, status: 401 and return
      end
    end
  end
end
