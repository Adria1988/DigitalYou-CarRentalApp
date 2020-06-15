# frozen_string_literal: true

class CarsController < ApplicationController
  # GET /cars
  def index
    @cars = Car.all
    #json_response(@cars)
  end

  def new
    @cars = Car.new
  end

  # POST /cars

  def create
    @car = Car.create!(car_params)
    print @car.save ? 'car saved on db' : 'card dont saved on bd'
    #json_response(@car, :created)
    render 'show'
  end

  # GET /cars/:id

  def show
    @car = Car.find(params[:id])
    #json_response(@car)
  end

  # PUT /cars/:id

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      redirect_to @car
      print @car.save ? 'car edited and saved on db' : 'card dont saved on bd'
    else
      render 'edit'
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  # DELETE /cars/:id

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to '/cars'
  end

  private

  def car_params
    params.require(:car).permit(:name, :image, :type_options, :price_hour, :doors, :gearshift, :AC, :luggage, :pick_up_location)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
