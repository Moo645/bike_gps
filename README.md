# Add simple CRUD (Bike, Gps_record)
* data logics:
    - (v) bikes has a unique name
    - (v) bikes can update gps records
    - (v) gps records creates when assosicated bike created
    - (v) gps record can not be edit, update, destroy
    - (v) gps record can be destroy when assosicated bike destroy

* Views logics:
    - (v) has a homepage with link to create bike, add gps_record to bike, destroy bike
    - (v) has a index of bikes with last gps record updates in home page
    - (v) has a page for bike create
    - (v) has a page for bike to add gps record

# known problem
* N+1 problem


# note: some error happen when coding (cost me a lot of time)
* when models assosicated.should noitice belong_to should be odd, has_many should be plural
* still don't get it why:
`
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
`
1. why @bike_gps will also save into database (:gps_records) even if didn't @bike_gps.save 
2. if i markup '@bike_gps = @bike.gps_records.new', and there's nothing create at database 

