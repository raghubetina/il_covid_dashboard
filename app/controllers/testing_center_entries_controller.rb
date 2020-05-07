class TestingCenterEntriesController < ApplicationController
  def index
    @testing_center_entries = TestingCenterEntry.page(params[:page]).per(10)

    render("testing_center_entry_templates/index.html.erb")
  end

  def show
    @testing_center_entry = TestingCenterEntry.find(params.fetch("id_to_display"))

    render("testing_center_entry_templates/show.html.erb")
  end

  def new_form
    @testing_center_entry = TestingCenterEntry.new

    render("testing_center_entry_templates/new_form.html.erb")
  end

  def create_row
    @testing_center_entry = TestingCenterEntry.new

    @testing_center_entry.testing_center_id = params.fetch("testing_center_id")
    @testing_center_entry.number_test_administered = params.fetch("number_test_administered")
    @testing_center_entry.number_of_people_untested_from_insufficient_supply = params.fetch("number_of_people_untested_from_insufficient_supply")
    @testing_center_entry.number_of_people_untested_from_other_reasons = params.fetch("number_of_people_untested_from_other_reasons")
    @testing_center_entry.percent_capacity = params.fetch("percent_capacity")
    @testing_center_entry.percent_positive_24_hour = params.fetch("percent_positive_24_hour")
    @testing_center_entry.percent_positive_72_hour = params.fetch("percent_positive_72_hour")
    @testing_center_entry.current_inv_anterior_nasal_swabs = params.fetch("current_inv_anterior_nasal_swabs")
    @testing_center_entry.current_inv_nasophayngeal_swabs = params.fetch("current_inv_nasophayngeal_swabs")
    @testing_center_entry.current_inv_transport_media = params.fetch("current_inv_transport_media")
    @testing_center_entry.for_24h_period_ending_at = params.fetch("for_24h_period_ending_at")

    if @testing_center_entry.valid?
      @testing_center_entry.save

      redirect_back(:fallback_location => "/testing_center_entries", :notice => "Testing center entry created successfully.")
    else
      render("testing_center_entry_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_testing_center
    @testing_center_entry = TestingCenterEntry.new

    @testing_center_entry.testing_center_id = params.fetch("testing_center_id")
    @testing_center_entry.number_test_administered = params.fetch("number_test_administered")
    @testing_center_entry.number_of_people_untested_from_insufficient_supply = params.fetch("number_of_people_untested_from_insufficient_supply")
    @testing_center_entry.number_of_people_untested_from_other_reasons = params.fetch("number_of_people_untested_from_other_reasons")
    @testing_center_entry.percent_capacity = params.fetch("percent_capacity")
    @testing_center_entry.percent_positive_24_hour = params.fetch("percent_positive_24_hour")
    @testing_center_entry.percent_positive_72_hour = params.fetch("percent_positive_72_hour")
    @testing_center_entry.current_inv_anterior_nasal_swabs = params.fetch("current_inv_anterior_nasal_swabs")
    @testing_center_entry.current_inv_nasophayngeal_swabs = params.fetch("current_inv_nasophayngeal_swabs")
    @testing_center_entry.current_inv_transport_media = params.fetch("current_inv_transport_media")
    @testing_center_entry.for_24h_period_ending_at = params.fetch("for_24h_period_ending_at")

    if @testing_center_entry.valid?
      @testing_center_entry.save

      redirect_to("/testing_centers/#{@testing_center_entry.testing_center_id}", notice: "TestingCenterEntry created successfully.")
    else
      render("testing_center_entry_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @testing_center_entry = TestingCenterEntry.find(params.fetch("prefill_with_id"))

    render("testing_center_entry_templates/edit_form.html.erb")
  end

  def update_row
    @testing_center_entry = TestingCenterEntry.find(params.fetch("id_to_modify"))

    @testing_center_entry.testing_center_id = params.fetch("testing_center_id")
    @testing_center_entry.number_test_administered = params.fetch("number_test_administered")
    @testing_center_entry.number_of_people_untested_from_insufficient_supply = params.fetch("number_of_people_untested_from_insufficient_supply")
    @testing_center_entry.number_of_people_untested_from_other_reasons = params.fetch("number_of_people_untested_from_other_reasons")
    @testing_center_entry.percent_capacity = params.fetch("percent_capacity")
    @testing_center_entry.percent_positive_24_hour = params.fetch("percent_positive_24_hour")
    @testing_center_entry.percent_positive_72_hour = params.fetch("percent_positive_72_hour")
    @testing_center_entry.current_inv_anterior_nasal_swabs = params.fetch("current_inv_anterior_nasal_swabs")
    @testing_center_entry.current_inv_nasophayngeal_swabs = params.fetch("current_inv_nasophayngeal_swabs")
    @testing_center_entry.current_inv_transport_media = params.fetch("current_inv_transport_media")
    @testing_center_entry.for_24h_period_ending_at = params.fetch("for_24h_period_ending_at")

    if @testing_center_entry.valid?
      @testing_center_entry.save

      redirect_to("/testing_center_entries/#{@testing_center_entry.id}", :notice => "Testing center entry updated successfully.")
    else
      render("testing_center_entry_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_testing_center
    @testing_center_entry = TestingCenterEntry.find(params.fetch("id_to_remove"))

    @testing_center_entry.destroy

    redirect_to("/testing_centers/#{@testing_center_entry.testing_center_id}", notice: "TestingCenterEntry deleted successfully.")
  end

  def destroy_row
    @testing_center_entry = TestingCenterEntry.find(params.fetch("id_to_remove"))

    @testing_center_entry.destroy

    redirect_to("/testing_center_entries", :notice => "Testing center entry deleted successfully.")
  end
end
