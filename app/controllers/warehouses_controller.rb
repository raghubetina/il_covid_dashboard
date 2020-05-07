class WarehousesController < ApplicationController
  def index
    @warehouses = Warehouse.page(params[:page]).per(10)

    render("warehouse_templates/index.html.erb")
  end

  def show
    @warehouse_entry = WarehouseEntry.new
    @warehouse = Warehouse.find(params.fetch("id_to_display"))

    render("warehouse_templates/show.html.erb")
  end

  def new_form
    @warehouse = Warehouse.new

    render("warehouse_templates/new_form.html.erb")
  end

  def create_row
    @warehouse = Warehouse.new

    @warehouse.location_name = params.fetch("location_name")
    @warehouse.location = params.fetch("location")

    if @warehouse.valid?
      @warehouse.save

      redirect_back(:fallback_location => "/warehouses", :notice => "Warehouse created successfully.")
    else
      render("warehouse_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @warehouse = Warehouse.find(params.fetch("prefill_with_id"))

    render("warehouse_templates/edit_form.html.erb")
  end

  def update_row
    @warehouse = Warehouse.find(params.fetch("id_to_modify"))

    @warehouse.location_name = params.fetch("location_name")
    @warehouse.location = params.fetch("location")

    if @warehouse.valid?
      @warehouse.save

      redirect_to("/warehouses/#{@warehouse.id}", :notice => "Warehouse updated successfully.")
    else
      render("warehouse_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @warehouse = Warehouse.find(params.fetch("id_to_remove"))

    @warehouse.destroy

    redirect_to("/warehouses", :notice => "Warehouse deleted successfully.")
  end
end
