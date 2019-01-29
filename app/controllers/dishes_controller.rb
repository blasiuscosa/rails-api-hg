class DishesController < ApplicationController
  def index
    @dishes = Dishes.all
    render(json: @dishes)
  end

  def show
    @dishes = Dishes.find(params[:id])
    render(json: @dishes)
  end

  def create
    @dish = Dishes.new(params.permit(:name))
    @dish.save
  end

  def update
    @dish = Dishes.find(params[:id])
    @dish.update(dish_params)
  end

  def destroy
    @dish = Dishes.find(params[:id])
    @dish.destroy
  end

  private

  def dish_params
    params.require(:post).permit(:name)
  end
end
