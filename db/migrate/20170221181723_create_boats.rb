class CreateBoats < ActiveRecord::Migration[5.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :capacity
      t.string :location
      t.integer :origin_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
