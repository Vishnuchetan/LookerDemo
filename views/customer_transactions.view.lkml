view: customer_transactions {
  sql_table_name: Sales.CustomerTransactions ;;

  dimension: amount_excluding_tax {
    type: number
    sql: ${TABLE}.AmountExcludingTax ;;
  }
  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }
  dimension: customer_transaction_id {
    type: number
    sql: ${TABLE}.CustomerTransactionID ;;
  }
  dimension_group: finalization {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FinalizationDate ;;
  }
  dimension: invoice_id {
    type: number
    sql: ${TABLE}.InvoiceID ;;
  }
  dimension: is_finalized {
    type: string
    sql: ${TABLE}.IsFinalized ;;
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
  dimension: outstanding_balance {
    type: number
    sql: ${TABLE}.OutstandingBalance ;;
  }
  dimension: payment_method_id {
    type: number
    sql: ${TABLE}.PaymentMethodID ;;
  }
  dimension: tax_amount {
    type: number
    sql: ${TABLE}.TaxAmount ;;
  }
  dimension: transaction_amount {
    type: number
    sql: ${TABLE}.TransactionAmount ;;
  }
  dimension_group: transaction {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TransactionDate ;;
  }
  dimension: transaction_type_id {
    type: number
    sql: ${TABLE}.TransactionTypeID ;;
  }
  measure: count {
    type: count
    drill_fields: [customers.customer_name, customers.bill_to_customer_id]
  }
}
