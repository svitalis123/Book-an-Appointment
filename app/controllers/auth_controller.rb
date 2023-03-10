class AuthController < ApplicationController
  skip_before_action :require_login, only: [:login, :auto_login]
  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      payload = {user_id: user.id}
      token = encode_token(payload)
      render json: {user: user, jwt: token, success: "Welcome back, #{user.username}"}
    else
      render json: {failure: "Log in failed! Username or password invalid!"}
    end
  end

  def auto_login
    if session_user
      render json: session_user
    else
      render json: {errors: "No User Logged In"}
    end
  end

  def user_is_authed
    @reserve=Reservation.find_by(user_id: current_user)
    render json: {message: "You are authorized", data: @reserve}    
  end
end
# eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyfQ.4wBWO1V8e-2SpT_TqvZLsnAp6-SLTgbQZjyaMQpEqpY
# eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyfQ.4wBWO1V8e-2SpT_TqvZLsnAp6-SLTgbQZjyaMQpEqpY