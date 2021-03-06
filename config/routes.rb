Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "warehouses#index"
  # Routes for the Lab entry resource:

  # CREATE
  get("/lab_entries/new", { :controller => "lab_entries", :action => "new_form" })
  post("/create_lab_entry", { :controller => "lab_entries", :action => "create_row" })
  post("/create_lab_entry_from_lab", { :controller => "lab_entries", :action => "create_row_from_lab" })

  # READ
  get("/lab_entries", { :controller => "lab_entries", :action => "index" })
  get("/lab_entries/:id_to_display", { :controller => "lab_entries", :action => "show" })

  # UPDATE
  get("/lab_entries/:prefill_with_id/edit", { :controller => "lab_entries", :action => "edit_form" })
  post("/update_lab_entry/:id_to_modify", { :controller => "lab_entries", :action => "update_row" })

  # DELETE
  get("/delete_lab_entry/:id_to_remove", { :controller => "lab_entries", :action => "destroy_row" })
  get("/delete_lab_entry_from_lab/:id_to_remove", { :controller => "lab_entries", :action => "destroy_row_from_lab" })

  #------------------------------

  # Routes for the Testing center entry resource:

  # CREATE
  get("/testing_center_entries/new", { :controller => "testing_center_entries", :action => "new_form" })
  post("/create_testing_center_entry", { :controller => "testing_center_entries", :action => "create_row" })
  post("/create_testing_center_entry_from_testing_center", { :controller => "testing_center_entries", :action => "create_row_from_testing_center" })

  # READ
  get("/testing_center_entries", { :controller => "testing_center_entries", :action => "index" })
  get("/testing_center_entries/:id_to_display", { :controller => "testing_center_entries", :action => "show" })

  # UPDATE
  get("/testing_center_entries/:prefill_with_id/edit", { :controller => "testing_center_entries", :action => "edit_form" })
  post("/update_testing_center_entry/:id_to_modify", { :controller => "testing_center_entries", :action => "update_row" })

  # DELETE
  get("/delete_testing_center_entry/:id_to_remove", { :controller => "testing_center_entries", :action => "destroy_row" })
  get("/delete_testing_center_entry_from_testing_center/:id_to_remove", { :controller => "testing_center_entries", :action => "destroy_row_from_testing_center" })

  #------------------------------

  # Routes for the Center type resource:

  # CREATE
  get("/center_types/new", { :controller => "center_types", :action => "new_form" })
  post("/create_center_type", { :controller => "center_types", :action => "create_row" })

  # READ
  get("/center_types", { :controller => "center_types", :action => "index" })
  get("/center_types/:id_to_display", { :controller => "center_types", :action => "show" })

  # UPDATE
  get("/center_types/:prefill_with_id/edit", { :controller => "center_types", :action => "edit_form" })
  post("/update_center_type/:id_to_modify", { :controller => "center_types", :action => "update_row" })

  # DELETE
  get("/delete_center_type/:id_to_remove", { :controller => "center_types", :action => "destroy_row" })

  #------------------------------

  # Routes for the Warehouse entry resource:

  # CREATE
  get("/warehouse_entries/new", { :controller => "warehouse_entries", :action => "new_form" })
  post("/create_warehouse_entry", { :controller => "warehouse_entries", :action => "create_row" })
  post("/create_warehouse_entry_from_warehouse", { :controller => "warehouse_entries", :action => "create_row_from_warehouse" })

  # READ
  get("/warehouse_entries", { :controller => "warehouse_entries", :action => "index" })
  get("/warehouse_entries/:id_to_display", { :controller => "warehouse_entries", :action => "show" })

  # UPDATE
  get("/warehouse_entries/:prefill_with_id/edit", { :controller => "warehouse_entries", :action => "edit_form" })
  post("/update_warehouse_entry/:id_to_modify", { :controller => "warehouse_entries", :action => "update_row" })

  # DELETE
  get("/delete_warehouse_entry/:id_to_remove", { :controller => "warehouse_entries", :action => "destroy_row" })
  get("/delete_warehouse_entry_from_warehouse/:id_to_remove", { :controller => "warehouse_entries", :action => "destroy_row_from_warehouse" })

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
  post("/create_testing_center_from_center_type", { :controller => "testing_centers", :action => "create_row_from_center_type" })

  # READ
  get("/testing_centers", { :controller => "testing_centers", :action => "index" })
  get("/testing_centers/:id_to_display", { :controller => "testing_centers", :action => "show" })

  # UPDATE
  get("/testing_centers/:prefill_with_id/edit", { :controller => "testing_centers", :action => "edit_form" })
  post("/update_testing_center/:id_to_modify", { :controller => "testing_centers", :action => "update_row" })

  # DELETE
  get("/delete_testing_center/:id_to_remove", { :controller => "testing_centers", :action => "destroy_row" })
  get("/delete_testing_center_from_center_type/:id_to_remove", { :controller => "testing_centers", :action => "destroy_row_from_center_type" })

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
