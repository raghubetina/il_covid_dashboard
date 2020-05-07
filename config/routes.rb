Rails.application.routes.draw do
  # Routes for the Testing center resource:

  # CREATE
  get("/testing_centers/new", { :controller => "testing_centers", :action => "new_form" })
  post("/create_testing_center", { :controller => "testing_centers", :action => "create_row" })

  # READ
  get("/testing_centers", { :controller => "testing_centers", :action => "index" })
  get("/testing_centers/:id_to_display", { :controller => "testing_centers", :action => "show" })

  # UPDATE
  get("/testing_centers/:prefill_with_id/edit", { :controller => "testing_centers", :action => "edit_form" })
  post("/update_testing_center/:id_to_modify", { :controller => "testing_centers", :action => "update_row" })

  # DELETE
  get("/delete_testing_center/:id_to_remove", { :controller => "testing_centers", :action => "destroy_row" })

  #------------------------------

  # Routes for the Warehouse resource:

  # CREATE
  get("/warehouses/new", { :controller => "warehouses", :action => "new_form" })
  post("/create_warehouse", { :controller => "warehouses", :action => "create_row" })

  # READ
  get("/warehouses", { :controller => "warehouses", :action => "index" })
  get("/warehouses/:id_to_display", { :controller => "warehouses", :action => "show" })

  # UPDATE
  get("/warehouses/:prefill_with_id/edit", { :controller => "warehouses", :action => "edit_form" })
  post("/update_warehouse/:id_to_modify", { :controller => "warehouses", :action => "update_row" })

  # DELETE
  get("/delete_warehouse/:id_to_remove", { :controller => "warehouses", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
