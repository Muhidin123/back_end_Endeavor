class RemoveColumnFromCheckpoints < ActiveRecord::Migration[6.0]
  def change
    remove_column :checkpoints, :time, :time
  end
end
