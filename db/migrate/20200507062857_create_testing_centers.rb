class CreateTestingCenters < ActiveRecord::Migration[5.1]
  def change
    create_table :testing_centers do |t|
      t.integer :center_type_id
      t.string :location_name
      t.string :location

      t.timestamps
    end
  end
end
