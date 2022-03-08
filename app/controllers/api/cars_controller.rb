class Api::CarsController < ApplicationController

  before_action :set_car, only: [:show, :update, :destroy]

  # get 'api/cars'
  def index
    render json: Car.all
  end

  # get 'api/cars/:id'
  def show
    render json: @car
  end

  def create
    car = Car.new(car_params)
    if car.save
      render json: car
    else
      render json: {errors: car.errors.full_messages}, status: 422
    end
  end

  def update
    if @car.update
      render json: @car
    else
      render json: {errors: @car.errors.full_messages}, status: 422
    end
  end

  # delete 'api/facts/:id'
  def destroy
    render json: @car.destroy
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end
    
  def car_params
    params.require(:car).permit(:year, :make, :model, :mileage)
  end

end
