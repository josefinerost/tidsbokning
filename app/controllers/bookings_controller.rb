class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    booking = Booking.new
    booking.start = params[:booking][:start]
    booking.stop = params[:booking][:stop]
    booking.save
    redirect_to(allabokningar_path)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    booking = Booking.find(params[:id])
    booking.update(start: params[:booking][:start], stop: params[:booking][:stop])
    redirect_to(allabokningar_path)
  end
end
