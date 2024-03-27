view: salesman {
  sql_table_name: dbo.Salesman ;;
  drill_fields: [salesman_id]

  dimension: salesman_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.salesman_id ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: commission {
    type: number
    sql: ${TABLE}.commission ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  measure: count {
    type: count
    drill_fields: [salesman_id, name]
  }
  measure: avg_commission {
    type : average
    sql: $(commission) ;;
  }
}
