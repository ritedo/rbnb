class UsersController < ApplicationController
  def dashboard

    @user = User.find(params[:id])
    @bikes = @user.bikes
    @reservations = []
    @bikes.each do |bike|
      bike.reservations.each do |reservation|
        @reservations << reservation
      end
    end

    @reservations_user = @user.reservations
    authorize @user

  end
end
