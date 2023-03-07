class ReservationUsersController < ApplicationController
  def index
    @reservation_users = ReservationUser.all
    render json: @reservation_users
  end

  def create
    @reservation_user = ReservationUser.new(reservation_user_params)
    if @reservation_user.save
      render json: @reservation_user, status: :created
    else
      render json: @reservation_user.errors, status: :unprocessable_entity
    end
  end

  private

  def reservation_user_params
    params.require(:reservation_user).permit(:vehicle, :model, :year, :color, :service)
  end
end