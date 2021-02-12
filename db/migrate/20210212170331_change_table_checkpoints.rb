class ChangeTableCheckpoints < ActiveRecord::Migration[6.0]
  def change
    change_table :checkpoints do |t|
      t.change :date, :datetime
    end
  end
end
