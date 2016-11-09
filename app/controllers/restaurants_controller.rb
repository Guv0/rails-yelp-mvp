class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:update, :edit, :destroy, :show]

  def new
    @restaurant = Restaurant.new
  end

  def update
    @restaurant.update(restaurant_params)
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurants_path
  end

  def edit
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def index
    @restaurants = Restaurant.all
  end

  def show

  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
