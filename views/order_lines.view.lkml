view: order_lines {
  sql_table_name: Sales.OrderLines ;;

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }
  dimension: last_edited_by {
    type: number
    sql: ${TABLE}.LastEditedBy ;;
  }
  dimension_group: last_edited_when {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.LastEditedWhen ;;
  }
  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderID ;;
  }
  dimension: order_line_id {
    type: number
    sql: ${TABLE}.OrderLineID ;;
  }
  dimension: package_type_id {
    type: number
    sql: ${TABLE}.PackageTypeID ;;
  }
  dimension: picked_quantity {
    type: number
    sql: ${TABLE}.PickedQuantity ;;
  }
  dimension_group: picking_completed_when {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.PickingCompletedWhen ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }
  dimension: stock_item_id {
    type: number
    sql: ${TABLE}.StockItemID ;;
  }
  dimension: tax_rate {
    type: number
    sql: ${TABLE}.TaxRate ;;
  }
  dimension: unit_price {
    type: number
    sql: ${TABLE}.UnitPrice ;;
  }
  measure: count {
    type: count
    drill_fields: [orders.backorder_order_id]
  }
}
