class ReviewsController < ApplicationController

  def create
    @bike = Bike.find(params[:bike_id])
    @review = Review.new(review_params)
    @review.bike = @bike
    if @review.save
      respond_to do |format|
        format.html { redirect_to bike_path(@bike) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      @equipments = Bike::EQUIPMENTS
      respond_to do |format|
        format.html { render 'bikes/show' }
        format.js  # <-- idem
      end
    end
    authorize @bike
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
