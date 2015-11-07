class FoodtrucksController < ApplicationController

  def index
    @foodtrucks = Foodtruck.all
  end

  def show
    @foodtruck = Foodtruck.find(params[:id])
  end

  def new
    @foodtruck =  Foodtruck.new
  end

  def create
    @foodtruck = Foodtruck.create(foodtruck_params)

    redirect_to foodtrucks_path
  end

  def edit
    @foodtruck = Foodtruck.find(params[:id])
  end

  def update
    @foodtruck = Foodtruck.find(params[:id])
    @foodtruck.update(foodtruck_params)

    redirect_to foodtruck_path(@foodtruck)
  end

  def destroy
    @foodtruck = Foodtruck.find(params[:id])
    @foodtruck.destroy

    redirect_to foodtrucks_path
  end


end

private

  def foodtruck_params
    params.require(:foodtruck).permit(:name, :img_url, :card, :menu, :cuisine)
  end
