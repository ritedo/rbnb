class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit, :update, :destroy]
  def index
    if search_params['address'] == ""
      @bikes = Bike.where(address: search_params['address'])
    else
      @bikes = Bike.all
    end
    # @bikes = Flat.where.not(latitude: nil, longitude: nil)

    @markers = @bikes.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def search
    @bikes = Bike.where(params[:address])
    redirect_to bikes_path
  end

  def show
    @reservation = Reservation.new
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
    params.require(:bike).permit(:title, :description, :price_per_day, :address, :photo, :photo_cache)
  end

  def set_bike
    @bike = Bike.find(params[:id])
    authorize @bike
  end
end
