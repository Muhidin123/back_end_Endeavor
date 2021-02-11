class ChangeCheckpointsDataTypeOfLatLng < ActiveRecord::Migration[6.0]
  def change
    change_table :checkpoints do |t|
      t.change :longitude, :float
      t.change :latitude, :float
    end
  end
end
