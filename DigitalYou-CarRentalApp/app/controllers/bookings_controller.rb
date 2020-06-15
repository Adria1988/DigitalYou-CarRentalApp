
class BookingsController < ApplicationController
  # frozen_string_literal: true
  # GET /bookings
  require 'user'
  def index
    @bookings = Booking.all
    #json_response(@bookings)
  end

  def new
    @booking = Booking.new
  end

  # POST /bookings

  def create
    @booking = Booking.create!(booking_params)
    print @booking.save ? 'user saved on db' : 'user dont saved on bd'
    #json_response(@user, :created)
    render 'show'
  end

  # GET /bookings/:id

  def show
    @booking = Booking.find(params[:id])
    #json_response(@booking)
  end

  # PUT /bookings/:id

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(bookings_params)
      redirect_to @booking
      print  @booking.save ? 'bookings edited and saved on db' : 'bookings dont saved on bd'
    else
      render 'edit'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  # DELETE /bookings/:id

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to '/bookings'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :car_id)
  end

  def set_bookings
    @booking = Booking.find(params[:id])
  end

end
