class ReservationController < ApplicationController
  # before_action :require_login
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id=2
    if @reservation.save
      @reservation_user = @reservation.reservation_users.build(user_id: 2, reservation_id:@reservation.id)
      if @reservation_user.save
        render json: @reservation, status: :created
      else
        render json: @reservation_user.errors, status: :unprocessable_entity
      end
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.permit(:vehicle, :model, :year, :color, :location, :service)
  end
end
