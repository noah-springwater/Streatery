class ReviewsController < ApplicationController

  def index

  end


  def new
  end

  def create
    @review = Review.new(review_params)
    @review.foodtruck_id = params[:foodtruck_id]

    @review.save
    redirect_to foodtruck_path(@review.foodtruck)
  end

  def show
  end

  def review_params
    params.require(:review).permit(:author, :rating, :message)
  end

end
