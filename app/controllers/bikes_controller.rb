class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:address].present?
      @bikes = Bike.near(params[:address], 2)
    else
      @bikes = Bike.where.not(latitude: nil, longitude: nil)
    end
    @markers = @bikes.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    @equipments = {
      "bell": "bell.png",
      "lights": "",
      "pump": "" ,
      "child_seat": "",
      "padlock": "",
      "helmet": "",
      "basket":"" ,
    }
    bike = Bike.find(params[:id])
    @markers = [{
      lat: bike.latitude,
      lng: bike.longitude,
      # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
    }]

    @reservation = Reservation.new
    @review = Review.new
  end

  def new
    @bike = Bike.new
    authorize @bike
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to mybikes_bikes_path
    else
      render :new
    end
    authorize @bike
  end

  def destroy
    @bike.destroy
    redirect_to mybikes_bikes_path
  end

  def edit
  end

  def update
    @bike.update(bike_params)
    redirect_to mybikes_bikes_path
  end

  def mybikes
    @bikes = Bike.where(user: current_user)
  end

  private

  def search_params
    params.permit(:address)
  end

  def bike_params
    params.require(:bike).permit(:title, :description, :price_per_day, :address, :photo, :photo_cache, :bell, :lights, :pump, :child_seat, :padlock, :helmet, :basket)
  end

  def set_bike
    @bike = Bike.find(params[:id])
    authorize @bike
  end
end
