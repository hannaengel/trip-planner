class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.string :day
      t.integer :activity_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
