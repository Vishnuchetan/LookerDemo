view: orders {
  sql_table_name: dbo.Orders ;;

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension_group: ord {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ord_date ;;
  }

  dimension: ord_no {
    type: number
    sql: ${TABLE}.ord_no ;;
    primary_key: yes  # ✅ Add this line
  }

  dimension: purch_amt {
    type: number
    sql: ${TABLE}.purch_amt ;;
  }

  dimension: salesman_id {
    type: number
    sql: ${TABLE}.salesman_id ;;
  }

  measure: count {
    type: count
  }

  measure: avg_purch_amt {
    type: average
    sql: ${purch_amt} ;;  # ✅ Fix: Use ${purch_amt}, not $(purch_amt)
  }

  measure: sum_purch_amt {
    type: sum
    sql: ${purch_amt} ;;  # ✅ Fix: Use ${purch_amt}, not $(purch_amt)
  }
}
