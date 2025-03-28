view: customers {
  sql_table_name: Sales.Customers ;;
  drill_fields: [bill_to_customer_id]

  dimension: bill_to_customer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BillToCustomerID ;;
  }
  dimension_group: account_opened {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.AccountOpenedDate ;;
  }
  dimension: alternate_contact_person_id {
    type: number
    sql: ${TABLE}.AlternateContactPersonID ;;
  }
  dimension: buying_group_id {
    type: number
    sql: ${TABLE}.BuyingGroupID ;;
  }
  dimension: credit_limit {
    type: number
    sql: ${TABLE}.CreditLimit ;;
  }
  dimension: customer_category_id {
    type: number
    sql: ${TABLE}.CustomerCategoryID ;;
  }
  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }
  dimension: customer_name {
    type: string
    sql: ${TABLE}.CustomerName ;;
  }
  dimension: delivery_address_line1 {
    type: string
    sql: ${TABLE}.DeliveryAddressLine1 ;;
  }
  dimension: delivery_address_line2 {
    type: string
    sql: ${TABLE}.DeliveryAddressLine2 ;;
  }
  dimension: delivery_city_id {
    type: number
    sql: ${TABLE}.DeliveryCityID ;;
  }
  dimension: delivery_location {
    type: string
    sql: ${TABLE}.DeliveryLocation ;;
  }
  dimension: delivery_method_id {
    type: number
    sql: ${TABLE}.DeliveryMethodID ;;
  }
  dimension: delivery_postal_code {
    type: string
    sql: ${TABLE}.DeliveryPostalCode ;;
  }
  dimension: delivery_run {
    type: string
    sql: ${TABLE}.DeliveryRun ;;
  }
  dimension: fax_number {
    type: string
    sql: ${TABLE}.FaxNumber ;;
  }
  dimension: is_on_credit_hold {
    type: string
    sql: ${TABLE}.IsOnCreditHold ;;
  }
  dimension: is_statement_sent {
    type: string
    sql: ${TABLE}.IsStatementSent ;;
  }
  dimension: last_edited_by {
    type: number
    sql: ${TABLE}.LastEditedBy ;;
  }
  dimension: payment_days {
    type: number
    sql: ${TABLE}.PaymentDays ;;
  }
  dimension: phone_number {
    type: string
    sql: ${TABLE}.PhoneNumber ;;
  }
  dimension: postal_address_line1 {
    type: string
    sql: ${TABLE}.PostalAddressLine1 ;;
  }
  dimension: postal_address_line2 {
    type: string
    sql: ${TABLE}.PostalAddressLine2 ;;
  }
  dimension: postal_city_id {
    type: number
    sql: ${TABLE}.PostalCityID ;;
  }
  dimension: postal_postal_code {
    type: string
    sql: ${TABLE}.PostalPostalCode ;;
  }
  dimension: primary_contact_person_id {
    type: number
    sql: ${TABLE}.PrimaryContactPersonID ;;
  }
  dimension: run_position {
    type: string
    sql: ${TABLE}.RunPosition ;;
  }
  dimension: standard_discount_percentage {
    type: number
    sql: ${TABLE}.StandardDiscountPercentage ;;
  }
  dimension_group: valid_from {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ValidFrom ;;
  }
  dimension_group: valid_to {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ValidTo ;;
  }
  dimension: website_url {
    type: string
    sql: ${TABLE}.WebsiteURL ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	bill_to_customer_id,
	customer_name,
	customers.customer_name,
	customers.bill_to_customer_id,
	customers.count,
	customer_transactions.count,
	orders.count
	]
  }

}
