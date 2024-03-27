view: employee_sample_data {
  sql_table_name: dbo.Employee_Sample_Data ;;

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }
  dimension: annual_salary {
    type: string
    sql: ${TABLE}."Annual Salary" ;;
  }
  dimension: bonus_ {
    type: string
    sql: ${TABLE}."Bonus %" ;;
  }
  dimension: business_unit {
    type: string
    sql: ${TABLE}."Business Unit" ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }
  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }
  dimension: eeid {
    type: string
    sql: ${TABLE}.EEID ;;
  }
  dimension: ethnicity {
    type: string
    sql: ${TABLE}.Ethnicity ;;
  }
  dimension: exit_date {
    type: string
    sql: ${TABLE}."Exit Date" ;;
  }
  dimension: full_name {
    type: string
    sql: ${TABLE}."Full Name" ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }
  dimension: hire_date {
    type: string
    sql: ${TABLE}."Hire Date" ;;
  }
  dimension: job_title {
    type: string
    sql: ${TABLE}."Job Title" ;;
  }
  measure: count {
    type: count
    drill_fields: [full_name]
  }
}
