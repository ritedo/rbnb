class UsersController < ApplicationController
  def dashboard
    @user = User.find(params[:id])
    @bikes = @user.bikes

    @reservations = Reservation.where(user: @user)
  end
end
