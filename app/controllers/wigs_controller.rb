class WigsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    if params[:query].present?
      @wigs = policy_scope(Wig.search_by_title_and_description(params[:query]))
    else
      @wigs = policy_scope(Wig)
    end
  end

  def new
    @wig = Wig.new
    authorize @wig
  end

  def create
    @wig = Wig.new(wig_params)
    @wig.user = current_user
    authorize @wig
    if @wig.save
      redirect_to wigs_path
    else
      render :new
    end
  end

  def show
    @wig = Wig.find(params[:id])
    skip_authorization
    @booking = Booking.new
    @booking.wig = @wig
  end

  def edit
    @wig = Wig.find(params[:id])
  end

  def update
    if @wig.update(wig_params)
      flash[:notice] = "wig details successfully updated"
      redirect_to wigs_path
    else
      render :edit
    end
  end

  def destroy
    skip_authorization
    Wig.find(params[:id]).destroy
    flash[:notice] = "wig successfully deleted"
    redirect_to error_path
  end

  def dashboard
    skip_authorization
    @wigs = Wig.where(user: current_user)
  end

  def error
    skip_authorization
  end

  private

  def wig_params
    params.require(:wig).permit(:title, :photo, :description, :location, :policies, :price)
  end



end
