class CreateCenterTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :center_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
