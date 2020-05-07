ActiveAdmin.register LabEntry do

 permit_params :lab_id, :number_tests_arrived_24_hour, :number_tested_24_hour, :positive_rate_24_hour, :percent_capacity_achieved_24_hour, :average_hours_needed_to_process_tests_24_hour, :percent_of_tests_in_last_7_days_which_took_longer_than_24_hours, :total_number_tests_at_lab_which_require_processing, :for_24h_period_ending_at
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
