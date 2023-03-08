class ReservationController < ApplicationController
  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      @reservation_user = @reservation.reservation_users.build(user_id: params[:user_id], reservation_id: @reservation.id)
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
    params.require(:reservation).permit(:vehicle, :model, :year, :color, :location, :service)
  end
end
