class RestaurantsController < ApplicationController
  before_action :get_dish
  before_action :get_restaurant

  def index
    @restaurant = @dish.restaurant
    render(json: @restaurant)
  end

  def show
    render(json: @restaurant)
  end

  def create
    @dish.restaurant.create!(restaurant_params)
  end

  def update
    @restaurant.update(restaurant_params)
  end

  def destroy
    @restaurant.destroy
  end

  private

  def restaurant_params
    params.permit(:name)
  end

  def get_dish
    @dish = Dishes.find(params[:dish_id])
  end

  def get_restaurant
    @restaurant = @dish.restaurant.find(params[:id]) if @dish
  end
end
