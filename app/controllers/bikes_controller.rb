class BikesController < ApplicationController
  before_action :find_bike, only: [:destroy]

  def index
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike_gps = @bike.gps_records.new
    if @bike.save 
      redirect_to root_path, notice: 'You just create a AWESOME bike!'
    else
      flash.now[:notice] = 'bike name existed, please rename your bike'
      render :new
    end
  end

  def destroy
    @bike.destroy
    redirect_to root_path, notice: 'you just destroy this awesome bike!'
  end

  private
  def bike_params
    params.require(:bike).permit(:name)
  end

  def find_bike
    @bike = Bike.find(params[:id])
  end
end
