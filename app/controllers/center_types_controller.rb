class CenterTypesController < ApplicationController
  def index
    @center_types = CenterType.all

    render("center_type_templates/index.html.erb")
  end

  def show
    @testing_center = TestingCenter.new
    @center_type = CenterType.find(params.fetch("id_to_display"))

    render("center_type_templates/show.html.erb")
  end

  def new_form
    @center_type = CenterType.new

    render("center_type_templates/new_form.html.erb")
  end

  def create_row
    @center_type = CenterType.new

    @center_type.name = params.fetch("name")

    if @center_type.valid?
      @center_type.save

      redirect_back(:fallback_location => "/center_types", :notice => "Center type created successfully.")
    else
      render("center_type_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @center_type = CenterType.find(params.fetch("prefill_with_id"))

    render("center_type_templates/edit_form.html.erb")
  end

  def update_row
    @center_type = CenterType.find(params.fetch("id_to_modify"))

    @center_type.name = params.fetch("name")

    if @center_type.valid?
      @center_type.save

      redirect_to("/center_types/#{@center_type.id}", :notice => "Center type updated successfully.")
    else
      render("center_type_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @center_type = CenterType.find(params.fetch("id_to_remove"))

    @center_type.destroy

    redirect_to("/center_types", :notice => "Center type deleted successfully.")
  end
end
