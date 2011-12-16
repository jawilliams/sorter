class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :color
      t.string :make
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
