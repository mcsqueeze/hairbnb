class WigsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @wigs = policy_scope(Wig)
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
  end

  def edit
    @wig = Wig.find(params[:id])
  end

  def update
    if @wig.update(wig_params)
      redirect_to wigs_path
    else
      render :edit
    end
  end

  def destroy
    skip_authorization
    Wig.find(params[:id]).destroy
    flash[:success] = "Wig Deleted"
    redirect_to wigs_path
  end

  private

  def wig_params
    params.require(:wig).permit(:title, :photo, :description, :location, :policies, :price)
  end
end
