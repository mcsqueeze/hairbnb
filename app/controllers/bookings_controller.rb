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
        redirect_to bookings_path
      else
        render :index
      end
  end

  def edit
    skip_authorization
    @booking = Booking.find(params[:id])
    @wig = Wig.find(@booking.wig_id)
  end

  def update
    skip_authorization
    if @booking.update(booking_params)
      flash[:notice] = "booking details successfully updated"
      redirect_to bookings_path
    else
      render :error
    end
  end

  def destroy
    skip_authorization
    Booking.find(params[:id]).destroy
    flash[:notice] = "booking successfully deleted"
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :wig_id)
  end
end
