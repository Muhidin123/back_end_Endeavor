class AddColumnsToTripsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :latitude_delta, :float
    add_column :trips, :longitude_delta, :float
  end
end
