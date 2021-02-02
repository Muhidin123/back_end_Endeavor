class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :note
      t.integer :longitude
      t.integer :latitude
      t.boolean :public
      t.date :start
      t.date :end
      t.string :destination_name

      t.timestamps
    end
  end
end
