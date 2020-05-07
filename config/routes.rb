Rails.application.routes.draw do
  # Routes for the Warehouse entry resource:

  # CREATE
  get("/warehouse_entries/new", { :controller => "warehouse_entries", :action => "new_form" })
  post("/create_warehouse_entry", { :controller => "warehouse_entries", :action => "create_row" })

  # READ
  get("/warehouse_entries", { :controller => "warehouse_entries", :action => "index" })
  get("/warehouse_entries/:id_to_display", { :controller => "warehouse_entries", :action => "show" })

  # UPDATE
  get("/warehouse_entries/:prefill_with_id/edit", { :controller => "warehouse_entries", :action => "edit_form" })
  post("/update_warehouse_entry/:id_to_modify", { :controller => "warehouse_entries", :action => "update_row" })

  # DELETE
  get("/delete_warehouse_entry/:id_to_remove", { :controller => "warehouse_entries", :action => "destroy_row" })

  #------------------------------

  # Routes for the Lab resource:

  # CREATE
  get("/labs/new", { :controller => "labs", :action => "new_form" })
  post("/create_lab", { :controller => "labs", :action => "create_row" })

  # READ
  get("/labs", { :controller => "labs", :action => "index" })
  get("/labs/:id_to_display", { :controller => "labs", :action => "show" })

  # UPDATE
  get("/labs/:prefill_with_id/edit", { :controller => "labs", :action => "edit_form" })
  post("/update_lab/:id_to_modify", { :controller => "labs", :action => "update_row" })

  # DELETE
  get("/delete_lab/:id_to_remove", { :controller => "labs", :action => "destroy_row" })

  #------------------------------

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
