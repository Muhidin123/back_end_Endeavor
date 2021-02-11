class ChangeNameLocationCheckpointsTable < ActiveRecord::Migration[6.0]
  def change
    change_table :checkpoints do |t|
      t.rename :location, :destination_name
    end
  end
end
