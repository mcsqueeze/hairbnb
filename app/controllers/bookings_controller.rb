class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @new_booking = Booking.new
  end

  def create
    @new_booking = Booking.new(booking_params)
    if @new_booking.save
      redirect_to flats_path
    else
      render :show
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
