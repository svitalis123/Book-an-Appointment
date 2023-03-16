# frozen_string_literal: true
class ReservationController < ApplicationController
  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  def create
    date = Time.at(params[:date].to_i / 1000).strftime('%d/%m/%Y')
    @reservation = Reservation.new(reservation_params.merge(date:)))
    if @reservation.save
      @reservation_user = @reservation.reservation_users.build(user_id: params[:userId], reservation_id: @reservation.id)
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
    params.permit(:vehicle, :model, :year, :color, :location, :service, :username)
  end
end
