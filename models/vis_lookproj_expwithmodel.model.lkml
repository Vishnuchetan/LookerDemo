connection: "vislookerdemo2"

# include all the views
include: "/views/**/*.view.lkml"
include: /views/customer.view.lkml
include: /views/orders.view.lkml
include: /views/salesman.view.lkml


datagroup: vis_lookproj_expwithmodel_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vis_lookproj_expwithmodel_default_datagroup

explore: employee_sample_data {}
