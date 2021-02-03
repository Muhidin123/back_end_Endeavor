class ChangeColumnDataTypeInTrips < ActiveRecord::Migration[6.0]
  def change
    change_table :trips do |t|
      t.change :longitude, :float
      t.change :latitude, :float
    end
  end
end
