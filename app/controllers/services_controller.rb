class ServicesController < ApplicationController
  before_action :set_service, only: %i[ show update destroy ]

  # GET /services
  def index
    @services = Service.all
    render json: @services
  end

  # POST /services
  def create
    @service = Service.new(service_params)

    if @service.save
      render json: @service, status: :created, location: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /services/1
  def destroy
    @service.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_params
      params.permit(:service, :photo, :description, :labour, :engineer, :price, :duration)
    end
end
