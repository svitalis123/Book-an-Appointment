class UsersController < ApplicationController
  # skip_before_action :require_login, only: [:create]

  def index
    @users = User.all
    render json: @users
  end

  def create
    user = User.create(user_params)
    if user.valid?
      payload = { user_id: user.id }
      token = encode_token(payload)
      render json: { user:, jwt: token }
    else
      render json: { errors: user.errors.full_messages }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end
