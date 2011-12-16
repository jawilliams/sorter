class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :team
      t.references :car

      t.timestamps
    end
    add_index :drivers, :car_id
  end
end
