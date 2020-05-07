class CreateTestingCenterEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :testing_center_entries do |t|
      t.integer :testing_center_id
      t.integer :number_test_administered
      t.integer :number_of_people_untested_from_insufficient_supply
      t.integer :number_of_people_untested_from_other_reasons
      t.float :percent_capacity
      t.float :percent_positive_24_hour
      t.float :percent_positive_72_hour
      t.integer :current_inv_anterior_nasal_swabs
      t.integer :current_inv_nasophayngeal_swabs
      t.integer :current_inv_transport_media
      t.datetime :for_24h_period_ending_at

      t.timestamps
    end
  end
end
