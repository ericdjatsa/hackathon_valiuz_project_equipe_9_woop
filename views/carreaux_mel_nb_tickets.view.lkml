view: carreaux_mel_nb_tickets {
  sql_table_name: `valiuz-ghack-lil23-7143.geographic_data.carreaux_mel_nb_tickets` ;;

  dimension: client_geom {
    type: string
    sql: ${TABLE}.client_geom ;;
  }
  dimension: geom {
    type: string
    sql: ${TABLE}.geom ;;
  }
  dimension: latitude_client {
    type: string
    sql: ${TABLE}.latitude_client ;;
  }
  dimension: longitude_client {
    type: string
    sql: ${TABLE}.longitude_client ;;
  }
  dimension: store_geom {
    type: string
    sql: ${TABLE}.store_geom ;;
  }
  dimension: store_latitude {
    type: number
    sql: ${TABLE}.store_latitude ;;
  }
  dimension: store_longitude {
    type: number
    sql: ${TABLE}.store_longitude ;;
  }
  dimension: sum_nb {
    type: number
    sql: ${TABLE}.sumNb ;;
  }
  measure: count {
    type: count
  }
}
