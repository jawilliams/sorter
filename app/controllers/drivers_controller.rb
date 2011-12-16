class DriversController < ApplicationController
  def index
  end
  def show
    @car = Car.find(params[:car_id])
    @driver = @car.drivers.find(params[:driver])
  end
  def edit
    @car = Car.find(params[:car_id])
    @driver = @car.drivers.find(params[:driver])
  end
  #def update
  #end
  #def new
  #end
  def create
    @car = Car.find(params[:car_id])
    @driver = @car.drivers.create(params[:driver])
    redirect_to car_path(@car)
  end
  
  
end
