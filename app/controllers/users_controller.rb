class UsersController < ApplicationController
  skip_after_action :verify_authorized, only: :dashboard

  def dashboard
    @user = current_user
    @bikes = @user.bikes
    @reservations = current_user.reservations_as_owner
    # @bikes.each do |bike|
    #   bike.reservations.each do |reservation|
    #     @reservations << reservation
    #   end
    # end

    @reservations_user = @user.reservations
  end
end
