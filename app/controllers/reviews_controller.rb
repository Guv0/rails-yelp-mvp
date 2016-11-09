class ReviewsController < ApplicationController
   before_action :find_restaurant, only: [:create, :new]

  def create
    @review = @restaurant.reviews.build(review_params)
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def new
    @review = Review.new
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
