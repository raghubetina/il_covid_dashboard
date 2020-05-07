class WarehouseEntriesController < ApplicationController
  def index
    @q = WarehouseEntry.ransack(params[:q])
    @warehouse_entries = @q.result(:distinct => true).includes(:warehouse).page(params[:page]).per(10)

    render("warehouse_entry_templates/index.html.erb")
  end

  def show
    @warehouse_entry = WarehouseEntry.find(params.fetch("id_to_display"))

    render("warehouse_entry_templates/show.html.erb")
  end

  def new_form
    @warehouse_entry = WarehouseEntry.new

    render("warehouse_entry_templates/new_form.html.erb")
  end

  def create_row
    @warehouse_entry = WarehouseEntry.new

    @warehouse_entry.number_anterior_swabs_received_24_hour = params.fetch("number_anterior_swabs_received_24_hour")
    @warehouse_entry.number_anterior_swabs_sent_24_hour = params.fetch("number_anterior_swabs_sent_24_hour")
    @warehouse_entry.number_outstanding_orders_anterior_swabs = params.fetch("number_outstanding_orders_anterior_swabs")
    @warehouse_entry.current_inv_anterior_swabs = params.fetch("current_inv_anterior_swabs")
    @warehouse_entry.number_nasopharyngeal_swabs_received_24_hour = params.fetch("number_nasopharyngeal_swabs_received_24_hour")
    @warehouse_entry.number_nasopharyngeal_swabs_sent_24_hour = params.fetch("number_nasopharyngeal_swabs_sent_24_hour")
    @warehouse_entry.number_outstanding_orders_nasopharyngeal_swabs = params.fetch("number_outstanding_orders_nasopharyngeal_swabs")
    @warehouse_entry.current_inv_nasopharyngeal_swabs = params.fetch("current_inv_nasopharyngeal_swabs")
    @warehouse_entry.number_transport_media_received_24_hour = params.fetch("number_transport_media_received_24_hour")
    @warehouse_entry.number_transport_media_sent_24_hour = params.fetch("number_transport_media_sent_24_hour")
    @warehouse_entry.number_outstanding_orders_transport_media = params.fetch("number_outstanding_orders_transport_media")
    @warehouse_entry.current_inv_transport_media = params.fetch("current_inv_transport_media")
    @warehouse_entry.warehouse_id = params.fetch("warehouse_id")
    @warehouse_entry.for_24h_period_ending_at = params.fetch("for_24h_period_ending_at")

    if @warehouse_entry.valid?
      @warehouse_entry.save

      redirect_back(:fallback_location => "/warehouse_entries", :notice => "Warehouse entry created successfully.")
    else
      render("warehouse_entry_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_warehouse
    @warehouse_entry = WarehouseEntry.new

    @warehouse_entry.number_anterior_swabs_received_24_hour = params.fetch("number_anterior_swabs_received_24_hour")
    @warehouse_entry.number_anterior_swabs_sent_24_hour = params.fetch("number_anterior_swabs_sent_24_hour")
    @warehouse_entry.number_outstanding_orders_anterior_swabs = params.fetch("number_outstanding_orders_anterior_swabs")
    @warehouse_entry.current_inv_anterior_swabs = params.fetch("current_inv_anterior_swabs")
    @warehouse_entry.number_nasopharyngeal_swabs_received_24_hour = params.fetch("number_nasopharyngeal_swabs_received_24_hour")
    @warehouse_entry.number_nasopharyngeal_swabs_sent_24_hour = params.fetch("number_nasopharyngeal_swabs_sent_24_hour")
    @warehouse_entry.number_outstanding_orders_nasopharyngeal_swabs = params.fetch("number_outstanding_orders_nasopharyngeal_swabs")
    @warehouse_entry.current_inv_nasopharyngeal_swabs = params.fetch("current_inv_nasopharyngeal_swabs")
    @warehouse_entry.number_transport_media_received_24_hour = params.fetch("number_transport_media_received_24_hour")
    @warehouse_entry.number_transport_media_sent_24_hour = params.fetch("number_transport_media_sent_24_hour")
    @warehouse_entry.number_outstanding_orders_transport_media = params.fetch("number_outstanding_orders_transport_media")
    @warehouse_entry.current_inv_transport_media = params.fetch("current_inv_transport_media")
    @warehouse_entry.warehouse_id = params.fetch("warehouse_id")
    @warehouse_entry.for_24h_period_ending_at = params.fetch("for_24h_period_ending_at")

    if @warehouse_entry.valid?
      @warehouse_entry.save

      redirect_to("/warehouses/#{@warehouse_entry.warehouse_id}", notice: "WarehouseEntry created successfully.")
    else
      render("warehouse_entry_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @warehouse_entry = WarehouseEntry.find(params.fetch("prefill_with_id"))

    render("warehouse_entry_templates/edit_form.html.erb")
  end

  def update_row
    @warehouse_entry = WarehouseEntry.find(params.fetch("id_to_modify"))

    @warehouse_entry.number_anterior_swabs_received_24_hour = params.fetch("number_anterior_swabs_received_24_hour")
    @warehouse_entry.number_anterior_swabs_sent_24_hour = params.fetch("number_anterior_swabs_sent_24_hour")
    @warehouse_entry.number_outstanding_orders_anterior_swabs = params.fetch("number_outstanding_orders_anterior_swabs")
    @warehouse_entry.current_inv_anterior_swabs = params.fetch("current_inv_anterior_swabs")
    @warehouse_entry.number_nasopharyngeal_swabs_received_24_hour = params.fetch("number_nasopharyngeal_swabs_received_24_hour")
    @warehouse_entry.number_nasopharyngeal_swabs_sent_24_hour = params.fetch("number_nasopharyngeal_swabs_sent_24_hour")
    @warehouse_entry.number_outstanding_orders_nasopharyngeal_swabs = params.fetch("number_outstanding_orders_nasopharyngeal_swabs")
    @warehouse_entry.current_inv_nasopharyngeal_swabs = params.fetch("current_inv_nasopharyngeal_swabs")
    @warehouse_entry.number_transport_media_received_24_hour = params.fetch("number_transport_media_received_24_hour")
    @warehouse_entry.number_transport_media_sent_24_hour = params.fetch("number_transport_media_sent_24_hour")
    @warehouse_entry.number_outstanding_orders_transport_media = params.fetch("number_outstanding_orders_transport_media")
    @warehouse_entry.current_inv_transport_media = params.fetch("current_inv_transport_media")
    @warehouse_entry.warehouse_id = params.fetch("warehouse_id")
    @warehouse_entry.for_24h_period_ending_at = params.fetch("for_24h_period_ending_at")

    if @warehouse_entry.valid?
      @warehouse_entry.save

      redirect_to("/warehouse_entries/#{@warehouse_entry.id}", :notice => "Warehouse entry updated successfully.")
    else
      render("warehouse_entry_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_warehouse
    @warehouse_entry = WarehouseEntry.find(params.fetch("id_to_remove"))

    @warehouse_entry.destroy

    redirect_to("/warehouses/#{@warehouse_entry.warehouse_id}", notice: "WarehouseEntry deleted successfully.")
  end

  def destroy_row
    @warehouse_entry = WarehouseEntry.find(params.fetch("id_to_remove"))

    @warehouse_entry.destroy

    redirect_to("/warehouse_entries", :notice => "Warehouse entry deleted successfully.")
  end
end
