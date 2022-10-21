# The name of this view in Looker is "Mock Pii Data"
view: mock_pii_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_data.mock_pii_data`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Caixa Master" in Explore.

  dimension: caixa_master {
    type: number
    sql: ${TABLE}.caixa_master ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_caixa_master {
    type: sum
    sql: ${caixa_master} ;;
  }

  measure: average_caixa_master {
    type: average
    sql: ${caixa_master} ;;
  }

  dimension: destino {
    type: number
    sql: ${TABLE}.destino ;;
  }

  dimension: lead_time {
    type: number
    sql: ${TABLE}.lead_time ;;
  }

  dimension: origem {
    type: number
    sql: ${TABLE}.origem ;;
  }

  dimension: preco_de_compra_cogs {
    type: number
    sql: ${TABLE}.preco_de_compra_cogs ;;
  }

  dimension: sku {
    type: number
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
