ActiveAdmin.register TestingCenterEntry do

 permit_params :testing_center_id, :number_test_administered, :number_of_people_untested_from_insufficient_supply, :number_of_people_untested_from_other_reasons, :percent_capacity, :percent_positive_24_hour, :percent_positive_72_hour, :current_inv_anterior_nasal_swabs, :current_inv_nasophayngeal_swabs, :current_inv_transport_media, :for_24h_period_ending_at
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
