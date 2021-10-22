class ChangColumnBikesIdToBikeId < ActiveRecord::Migration[6.1]
  def change
    rename_column :gps_records, :bikes_id, :bike_id
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
