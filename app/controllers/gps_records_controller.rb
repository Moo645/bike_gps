class GpsRecordsController < ApplicationController
  before_action :this_bike
  def index
    find_bike_gps
  end

  def new
    @gps_record = GpsRecord.new
  end

  def create
    @gps_record = @this_bike.gps_records.new(gps_params)
    if @gps_record.save
      redirect_to root_path, notice: 'GPS record save!'
    else
      flash.now[:notice] = 'NOOOO'
      render :new
    end
  end

  def destory
  end

  private
  def gps_params
    # looks like it could .to_f automatically
    params.require(:gps_record).permit(:lat, :lon, :bike_id)
  end

  def find_bike_gps
    @gps = @this_bike.gps_records
  end
end
