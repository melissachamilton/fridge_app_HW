class FridgesController < ApplicationController
  def index
    @fridges = Fridge.all
  end

  def show
    @Fridge = Fridge.find(params[:id])
  end

  def new
    @Fridge = Fridge.new 
  end

  def edit
  end

  def create
    @Fridge = Fridge.create!(fridge_params)
    redirect_to "/fridges/#{@Fridge.id}"
  end

  def destroy
    @Fridge = Fridge.find(params[:id])
    @Fridge.destroy
    redirect_to "/fridges/"
  end

  private

  def fridge_params
    params.require(:fridge).permit(:location, :brand, :size)
  end

end
