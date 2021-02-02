class CreateCheckpoints < ActiveRecord::Migration[6.0]
  def change
    create_table :checkpoints do |t|
      t.references :trip, null: false, foreign_key: true
      t.date :date
      t.time :time
      t.string :location
      t.string :title
      t.integer :longitude
      t.integer :latitude
      t.text :description
      t.text :note

      t.timestamps
    end
  end
end
