ActiveAdmin.register WarehouseEntry do

 permit_params :number_anterior_swabs_received_24_hour, :number_anterior_swabs_sent_24_hour, :number_outstanding_orders_anterior_swabs, :current_inv_anterior_swabs, :number_nasopharyngeal_swabs_received_24_hour, :number_nasopharyngeal_swabs_sent_24_hour, :number_outstanding_orders_nasopharyngeal_swabs, :current_inv_nasopharyngeal_swabs, :number_transport_media_received_24_hour, :number_transport_media_sent_24_hour, :number_outstanding_orders_transport_media, :current_inv_transport_media, :warehouse_id, :for_24h_period_ending_at
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
