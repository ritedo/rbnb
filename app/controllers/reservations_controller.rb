class ReservationsController < ApplicationController
  before_action :authenticate_user!
  include Pundit

  def create
    @reservation = Reservation.new(reservation_params)
    @user = current_user
    @reservation.user = @user
    @reservation.bike = Bike.find(params[:bike_id])

    authorize @reservation
    @reservation.save
    redirect_to dashboard_path(@user)
  end

  def index
  end

  private

  def reservation_params
    params.require(:reservation).permit(:starts_at, :ends_at)
  end
end
