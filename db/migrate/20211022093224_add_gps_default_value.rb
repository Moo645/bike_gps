class AddGpsDefaultValue < ActiveRecord::Migration[6.1]
  def change
    change_column_default :gps_records, :lat, 0
    change_column_default :gps_records, :lon, 0

  end
end
