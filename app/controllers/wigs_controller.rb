class WigsController < ApplicationController
  def index
    @wigs = Wig.all
  end

  def new
    @wig = Wig.new
  end

  def create
    @wig = Wig.new(wig_params)
    if @wig.save
      redirect_to wigs_path
    else
      render :new
    end
  end

  def show
    @wig = Wig.find(params[:id])
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

  def destroy
    Wig.find(params[:id]).destroy
    flash[:success] = "Wig Deleted"
    redirect_to wigs_path
  end
end

  private

  def wig_params
    params.require(:wig).permit(:title, :photo, :description, :location, :policies, :price)
  end
