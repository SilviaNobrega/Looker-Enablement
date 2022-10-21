# The name of this view in Looker is "Austral Andina"
view: austral_andina {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_data.austral_andina`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " Courses" in Explore.

  dimension: __courses {
    type: number
    sql: ${TABLE}.__Courses ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total___courses {
    type: sum
    sql: ${__courses} ;;
  }

  measure: average___courses {
    type: average
    sql: ${__courses} ;;
  }

  dimension: be_digital {
    type: string
    sql: ${TABLE}.Be_Digital ;;
  }

  dimension: channel_id {
    type: number
    sql: ${TABLE}.Channel_ID ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.Language ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}.Level ;;
  }

  dimension: link_directo {
    type: string
    sql: ${TABLE}.Link_directo ;;
  }

  dimension: percipio_catalogue {
    type: string
    sql: ${TABLE}.Percipio_Catalogue ;;
  }

  dimension: percipio_channel_title {
    type: string
    sql: ${TABLE}.Percipio_Channel_Title ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
