class TestingCentersController < ApplicationController
  def index
    @testing_centers = TestingCenter.page(params[:page]).per(10)

    render("testing_center_templates/index.html.erb")
  end

  def show
    @testing_center_entry = TestingCenterEntry.new
    @testing_center = TestingCenter.find(params.fetch("id_to_display"))

    render("testing_center_templates/show.html.erb")
  end

  def new_form
    @testing_center = TestingCenter.new

    render("testing_center_templates/new_form.html.erb")
  end

  def create_row
    @testing_center = TestingCenter.new

    @testing_center.center_type_id = params.fetch("center_type_id")
    @testing_center.location_name = params.fetch("location_name")
    @testing_center.location = params.fetch("location")

    if @testing_center.valid?
      @testing_center.save

      redirect_back(:fallback_location => "/testing_centers", :notice => "Testing center created successfully.")
    else
      render("testing_center_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_center_type
    @testing_center = TestingCenter.new

    @testing_center.center_type_id = params.fetch("center_type_id")
    @testing_center.location_name = params.fetch("location_name")
    @testing_center.location = params.fetch("location")

    if @testing_center.valid?
      @testing_center.save

      redirect_to("/center_types/#{@testing_center.center_type_id}", notice: "TestingCenter created successfully.")
    else
      render("testing_center_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @testing_center = TestingCenter.find(params.fetch("prefill_with_id"))

    render("testing_center_templates/edit_form.html.erb")
  end

  def update_row
    @testing_center = TestingCenter.find(params.fetch("id_to_modify"))

    @testing_center.center_type_id = params.fetch("center_type_id")
    @testing_center.location_name = params.fetch("location_name")
    @testing_center.location = params.fetch("location")

    if @testing_center.valid?
      @testing_center.save

      redirect_to("/testing_centers/#{@testing_center.id}", :notice => "Testing center updated successfully.")
    else
      render("testing_center_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_center_type
    @testing_center = TestingCenter.find(params.fetch("id_to_remove"))

    @testing_center.destroy

    redirect_to("/center_types/#{@testing_center.center_type_id}", notice: "TestingCenter deleted successfully.")
  end

  def destroy_row
    @testing_center = TestingCenter.find(params.fetch("id_to_remove"))

    @testing_center.destroy

    redirect_to("/testing_centers", :notice => "Testing center deleted successfully.")
  end
end
