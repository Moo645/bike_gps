class ApplicationController < ActionController::Base
  helper_method :this_bike
  def this_bike
    @this_bike ||= Bike.find_by(id: params[:bike_id])
  end
end
