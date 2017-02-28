class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.references :user, index: true, foreign_key: true
      t.references :boat, index: true, foreign_key: true
      t.references :origin, foreign_key: true
      t.references :destination, foreign_key: true
      t.string :name
      t.string :description
      t.integer :cost
      t.integer :customer

      t.timestamps
    end
  end
end
