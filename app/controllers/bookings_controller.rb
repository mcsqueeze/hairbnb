class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = Booking.find(params[:id])
    @new_booking = Booking.new
    authorize @booking
  end

  def new
    @booking = Booking.new
    @wig = Wig.find(params[:wig_id])
    @booking.wig = @wig
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)

    @wig = Wig.find(params[:wig_id])
    authorize @booking
    @booking.user = current_user
    @booking.wig = @wig
      if @booking.save
        redirect_to booking_path(@booking)
      else
        render :new
      end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
