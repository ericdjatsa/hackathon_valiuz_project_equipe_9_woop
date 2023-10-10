# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

explore: hackathon_valiuz {
  hidden: yes
  join: hackathon_valiuz__products_cug {
    view_label: "Hackathon Valiuz: Products Cug"
    sql: LEFT JOIN UNNEST(${hackathon_valiuz.products_cug}) as hackathon_valiuz__products_cug ;;
    relationship: one_to_many
  }
  join: hackathon_valiuz__products_ean {
    view_label: "Hackathon Valiuz: Products Ean"
    sql: LEFT JOIN UNNEST(${hackathon_valiuz.products_ean}) as hackathon_valiuz__products_ean ;;
    relationship: one_to_many
  }
  join: hackathon_valiuz__product_types {
    view_label: "Hackathon Valiuz: Product Types"
    sql: LEFT JOIN UNNEST(${hackathon_valiuz.product_types}) as hackathon_valiuz__product_types ;;
    relationship: one_to_many
  }
  join: hackathon_valiuz__order_services {
    view_label: "Hackathon Valiuz: Order Services"
    sql: LEFT JOIN UNNEST(${hackathon_valiuz.order_services}) as hackathon_valiuz__order_services ;;
    relationship: one_to_many
  }
}

view: hackathon_valiuz {
  sql_table_name: `valiuz-ghack-lil23-7143.woop_data.hackathon_valiuz` ;;

  dimension: carrier_id {
    type: number
    sql: ${TABLE}.carrier_id ;;
  }
  dimension: carrier_name {
    type: string
    sql: ${TABLE}.carrier_name ;;
  }
  dimension: delivery_address_city {
    type: string
    sql: ${TABLE}.delivery_address_city ;;
  }
  dimension: delivery_address_departement {
    type: string
    sql: ${TABLE}.delivery_address_departement ;;
  }
  dimension: delivery_address_postal_code {
    type: string
    sql: ${TABLE}.delivery_address_postal_code ;;
  }
  dimension: delivery_price {
    type: number
    sql: ${TABLE}.delivery_price ;;
  }
  dimension: delivery_price_currency {
    type: string
    sql: ${TABLE}.delivery_price_currency ;;
  }
  dimension: distance_km {
    type: number
    sql: ${TABLE}.distance_km ;;
  }
  dimension: environment_coef {
    type: string
    sql: ${TABLE}.environment_coef ;;
  }
  dimension: environment_score {
    type: string
    sql: ${TABLE}.environment_score ;;
  }
  dimension: exchange_place_id {
    type: number
    sql: ${TABLE}.exchange_place_id ;;
  }
  dimension: exchange_place_name {
    type: string
    sql: ${TABLE}.exchange_place_name ;;
  }
  dimension: exchange_place_type {
    type: string
    sql: ${TABLE}.exchange_place_type ;;
  }
  dimension: is_delivery_returned_to_sender {
    type: yesno
    sql: ${TABLE}.is_delivery_returned_to_sender ;;
  }
  dimension: order_services {
    hidden: yes
    sql: ${TABLE}.order_services ;;
  }
  dimension: ot_created_at {
    type: string
    sql: ${TABLE}.ot_created_at ;;
  }
  dimension: ot_created_year_month {
    type: string
    sql: ${TABLE}.ot_created_year_month ;;
  }
  dimension: picking_address_city {
    type: string
    sql: ${TABLE}.picking_address_city ;;
  }
  dimension: picking_address_departement {
    type: string
    sql: ${TABLE}.picking_address_departement ;;
  }
  dimension: picking_address_lat {
    type: string
    sql: ${TABLE}.picking_address_lat ;;
  }
  dimension: picking_address_long {
    type: string
    sql: ${TABLE}.picking_address_long ;;
  }
  dimension: picking_address_postal_code {
    type: string
    sql: ${TABLE}.picking_address_postal_code ;;
  }
  dimension: price_coef {
    type: string
    sql: ${TABLE}.price_coef ;;
  }
  dimension: price_score {
    type: number
    sql: ${TABLE}.price_score ;;
  }
  dimension: product_types {
    hidden: yes
    sql: ${TABLE}.product_types ;;
  }
  dimension: products_cug {
    hidden: yes
    sql: ${TABLE}.products_cug ;;
  }
  dimension: products_ean {
    hidden: yes
    sql: ${TABLE}.products_ean ;;
  }
  dimension: real_delivery_at {
    type: string
    sql: ${TABLE}.real_delivery_at ;;
  }
  dimension: real_picking_at {
    type: string
    sql: ${TABLE}.real_picking_at ;;
  }
  dimension: retailer_id {
    type: number
    sql: ${TABLE}.retailer_id ;;
  }
  dimension: retailer_name {
    type: string
    sql: ${TABLE}.retailer_name ;;
  }
  dimension: satisfaction_coef {
    type: string
    sql: ${TABLE}.satisfaction_coef ;;
  }
  dimension: satisfaction_score {
    type: number
    sql: ${TABLE}.satisfaction_score ;;
  }
  dimension: service_level {
    type: number
    sql: ${TABLE}.service_level ;;
  }
  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }
  dimension: store_name {
    type: string
    sql: ${TABLE}.store_name ;;
  }
  dimension: theoric_delivery_end_at {
    type: string
    sql: ${TABLE}.theoric_delivery_end_at ;;
  }
  dimension_group: theoric_delivery_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.theoric_delivery_start_at ;;
  }
  dimension: time_of_delivery_hours {
    type: number
    sql: ${TABLE}.time_of_delivery_hours ;;
  }
  dimension: weight_kg {
    type: number
    sql: ${TABLE}.weight_kg ;;
  }
  measure: count {
    type: count
    drill_fields: [exchange_place_name, store_name, carrier_name, retailer_name]
  }
}

view: hackathon_valiuz__products_cug {

  dimension: hackathon_valiuz__products_cug {
    type: string
    sql: hackathon_valiuz__products_cug ;;
  }
}

view: hackathon_valiuz__products_ean {

  dimension: hackathon_valiuz__products_ean {
    type: string
    sql: hackathon_valiuz__products_ean ;;
  }
}

view: hackathon_valiuz__product_types {

  dimension: hackathon_valiuz__product_types {
    type: string
    sql: hackathon_valiuz__product_types ;;
  }
}

view: hackathon_valiuz__order_services {

  dimension: hackathon_valiuz__order_services {
    type: string
    sql: hackathon_valiuz__order_services ;;
  }
}
