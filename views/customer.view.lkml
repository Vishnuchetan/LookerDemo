view: customer {
  sql_table_name: dbo.Customer ;;
  drill_fields: [customer_id]

  dimension: customer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: cust_name {
    type: string
    sql: ${TABLE}.cust_name ;;
  }
  dimension: grade {
    type: number
    sql: ${TABLE}.grade ;;
  }
  dimension: salesman_id {
    type: number
    sql: ${TABLE}.salesman_id ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_id, cust_name]
  }
}
