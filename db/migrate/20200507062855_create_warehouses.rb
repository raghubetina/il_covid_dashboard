class CreateWarehouses < ActiveRecord::Migration[5.1]
  def change
    create_table :warehouses do |t|
      t.string :location_name
      t.string :location

      t.timestamps
    end
  end
end
