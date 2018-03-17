class BookingsController < ApplicationController
  before_action :require_login, except: :index
  
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new(start: 1.hours.from_now, stop: 2.hours.from_now)
  end

  def create
    @booking = current_user.bookings.build(booking_params)
    if @booking.save
      redirect_to(bookings_path)
    else
      render(:new, status: 422)
    end
  end

  def edit
    @booking = current_user.bookings.find(params[:id])
  end

  def update
    booking = current_user.bookings.find(params[:id])
    booking.update(booking_params)
    redirect_to(bookings_path)
  end

  def destroy
    booking = current_user.bookings.find(params[:id])
    booking.destroy!
    redirect_to(bookings_path)
  end

  private

  def booking_params
    params.require(:booking).permit(:start, :stop)
  end
end
