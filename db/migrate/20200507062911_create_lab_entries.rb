class CreateLabEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :lab_entries do |t|
      t.integer :lab_id
      t.integer :number_tests_arrived_24_hour
      t.integer :number_tested_24_hour
      t.float :positive_rate_24_hour
      t.float :percent_capacity_achieved_24_hour
      t.float :average_hours_needed_to_process_tests_24_hour
      t.float :percent_of_tests_in_last_7_days_which_took_longer_than_24_hours
      t.integer :total_number_tests_at_lab_which_require_processing
      t.datetime :for_24h_period_ending_at

      t.timestamps
    end
  end
end
