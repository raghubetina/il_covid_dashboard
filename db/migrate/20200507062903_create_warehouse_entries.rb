class CreateWarehouseEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :warehouse_entries do |t|
      t.integer :number_anterior_swabs_received_24_hour
      t.integer :number_anterior_swabs_sent_24_hour
      t.integer :number_outstanding_orders_anterior_swabs
      t.integer :current_inv_anterior_swabs
      t.integer :number_nasopharyngeal_swabs_received_24_hour
      t.integer :number_nasopharyngeal_swabs_sent_24_hour
      t.integer :number_outstanding_orders_nasopharyngeal_swabs
      t.integer :current_inv_nasopharyngeal_swabs
      t.integer :number_transport_media_received_24_hour
      t.integer :number_transport_media_sent_24_hour
      t.integer :number_outstanding_orders_transport_media
      t.integer :current_inv_transport_media
      t.integer :warehouse_id
      t.datetime :for_24h_period_ending_at

      t.timestamps
    end
  end
end
