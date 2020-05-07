class LabEntriesController < ApplicationController
  def index
    @q = LabEntry.ransack(params[:q])
    @lab_entries = @q.result(:distinct => true).includes(:lab).page(params[:page]).per(10)

    render("lab_entry_templates/index.html.erb")
  end

  def show
    @lab_entry = LabEntry.find(params.fetch("id_to_display"))

    render("lab_entry_templates/show.html.erb")
  end

  def new_form
    @lab_entry = LabEntry.new

    render("lab_entry_templates/new_form.html.erb")
  end

  def create_row
    @lab_entry = LabEntry.new

    @lab_entry.lab_id = params.fetch("lab_id")
    @lab_entry.number_tests_arrived_24_hour = params.fetch("number_tests_arrived_24_hour")
    @lab_entry.number_tested_24_hour = params.fetch("number_tested_24_hour")
    @lab_entry.positive_rate_24_hour = params.fetch("positive_rate_24_hour")
    @lab_entry.percent_capacity_achieved_24_hour = params.fetch("percent_capacity_achieved_24_hour")
    @lab_entry.average_hours_needed_to_process_tests_24_hour = params.fetch("average_hours_needed_to_process_tests_24_hour")
    @lab_entry.percent_of_tests_in_last_7_days_which_took_longer_than_24_hours = params.fetch("percent_of_tests_in_last_7_days_which_took_longer_than_24_hours")
    @lab_entry.total_number_tests_at_lab_which_require_processing = params.fetch("total_number_tests_at_lab_which_require_processing")
    @lab_entry.for_24h_period_ending_at = params.fetch("for_24h_period_ending_at")

    if @lab_entry.valid?
      @lab_entry.save

      redirect_back(:fallback_location => "/lab_entries", :notice => "Lab entry created successfully.")
    else
      render("lab_entry_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_lab
    @lab_entry = LabEntry.new

    @lab_entry.lab_id = params.fetch("lab_id")
    @lab_entry.number_tests_arrived_24_hour = params.fetch("number_tests_arrived_24_hour")
    @lab_entry.number_tested_24_hour = params.fetch("number_tested_24_hour")
    @lab_entry.positive_rate_24_hour = params.fetch("positive_rate_24_hour")
    @lab_entry.percent_capacity_achieved_24_hour = params.fetch("percent_capacity_achieved_24_hour")
    @lab_entry.average_hours_needed_to_process_tests_24_hour = params.fetch("average_hours_needed_to_process_tests_24_hour")
    @lab_entry.percent_of_tests_in_last_7_days_which_took_longer_than_24_hours = params.fetch("percent_of_tests_in_last_7_days_which_took_longer_than_24_hours")
    @lab_entry.total_number_tests_at_lab_which_require_processing = params.fetch("total_number_tests_at_lab_which_require_processing")
    @lab_entry.for_24h_period_ending_at = params.fetch("for_24h_period_ending_at")

    if @lab_entry.valid?
      @lab_entry.save

      redirect_to("/labs/#{@lab_entry.lab_id}", notice: "LabEntry created successfully.")
    else
      render("lab_entry_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @lab_entry = LabEntry.find(params.fetch("prefill_with_id"))

    render("lab_entry_templates/edit_form.html.erb")
  end

  def update_row
    @lab_entry = LabEntry.find(params.fetch("id_to_modify"))

    @lab_entry.lab_id = params.fetch("lab_id")
    @lab_entry.number_tests_arrived_24_hour = params.fetch("number_tests_arrived_24_hour")
    @lab_entry.number_tested_24_hour = params.fetch("number_tested_24_hour")
    @lab_entry.positive_rate_24_hour = params.fetch("positive_rate_24_hour")
    @lab_entry.percent_capacity_achieved_24_hour = params.fetch("percent_capacity_achieved_24_hour")
    @lab_entry.average_hours_needed_to_process_tests_24_hour = params.fetch("average_hours_needed_to_process_tests_24_hour")
    @lab_entry.percent_of_tests_in_last_7_days_which_took_longer_than_24_hours = params.fetch("percent_of_tests_in_last_7_days_which_took_longer_than_24_hours")
    @lab_entry.total_number_tests_at_lab_which_require_processing = params.fetch("total_number_tests_at_lab_which_require_processing")
    @lab_entry.for_24h_period_ending_at = params.fetch("for_24h_period_ending_at")

    if @lab_entry.valid?
      @lab_entry.save

      redirect_to("/lab_entries/#{@lab_entry.id}", :notice => "Lab entry updated successfully.")
    else
      render("lab_entry_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_lab
    @lab_entry = LabEntry.find(params.fetch("id_to_remove"))

    @lab_entry.destroy

    redirect_to("/labs/#{@lab_entry.lab_id}", notice: "LabEntry deleted successfully.")
  end

  def destroy_row
    @lab_entry = LabEntry.find(params.fetch("id_to_remove"))

    @lab_entry.destroy

    redirect_to("/lab_entries", :notice => "Lab entry deleted successfully.")
  end
end
