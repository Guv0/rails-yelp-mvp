class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:update, :edit, :destroy, :show]

  def new
    @restaurant = Restaurant.new
  end

  def update
  end

  def create
    @restaurant = Restaurant.create(params[:restaurant])
  end

  def edit

  end

  def destroy

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

  # def restaurant_params

  # end
end
