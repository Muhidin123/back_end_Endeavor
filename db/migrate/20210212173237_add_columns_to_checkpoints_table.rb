class AddColumnsToCheckpointsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :checkpoints, :latitude_delta, :float
    add_column :checkpoints, :longitude_delta, :float
  end
end
