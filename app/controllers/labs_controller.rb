class LabsController < ApplicationController
  def index
    @labs = Lab.page(params[:page]).per(10)

    render("lab_templates/index.html.erb")
  end

  def show
    @lab_entry = LabEntry.new
    @lab = Lab.find(params.fetch("id_to_display"))

    render("lab_templates/show.html.erb")
  end

  def new_form
    @lab = Lab.new

    render("lab_templates/new_form.html.erb")
  end

  def create_row
    @lab = Lab.new

    @lab.location_name = params.fetch("location_name")
    @lab.location = params.fetch("location")

    if @lab.valid?
      @lab.save

      redirect_back(:fallback_location => "/labs", :notice => "Lab created successfully.")
    else
      render("lab_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @lab = Lab.find(params.fetch("prefill_with_id"))

    render("lab_templates/edit_form.html.erb")
  end

  def update_row
    @lab = Lab.find(params.fetch("id_to_modify"))

    @lab.location_name = params.fetch("location_name")
    @lab.location = params.fetch("location")

    if @lab.valid?
      @lab.save

      redirect_to("/labs/#{@lab.id}", :notice => "Lab updated successfully.")
    else
      render("lab_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @lab = Lab.find(params.fetch("id_to_remove"))

    @lab.destroy

    redirect_to("/labs", :notice => "Lab deleted successfully.")
  end
end
