class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = Booking.find(params[:id])
    @new_booking = Booking.new
    authorize @booking

  end

  def create
    @new_booking = Booking.new(booking_params)
    if @new_booking.save
      redirect_to bookings_path
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
