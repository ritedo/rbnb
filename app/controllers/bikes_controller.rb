class BikesController < ApplicationController
  before_action :set_bike, only: :show
  def index
    if search_params['address'] == ""
      @bikes = Bike.where(address: search_params['address'])
    else
      @bikes = Bike.all
    end
  end

  def search
    @bikes = Bikes.where(params[:address])
    redirect_to bikes_path
  end

  def show
    @reservation = Reservation.new
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    @bike.save
    redirect_to bikes_path
  end

  private

  def search_params
    params.permit(:address)
  end

  def bike_params
    params.require(:bike).permit(:title, :description, :price_per_day, :address, :photo, :photo_cache)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
