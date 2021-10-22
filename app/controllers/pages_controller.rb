class PagesController < ApplicationController

  def index
    @bike = Bike.all
  end

end