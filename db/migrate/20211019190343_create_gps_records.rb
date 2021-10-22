class CreateGpsRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :gps_records do |t|
      t.references :bikes, null: false, foreign_key: true
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
