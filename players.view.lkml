view: players {
  sql_table_name: jesseset1.players ;;

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: first {
    type: string
    sql: ${TABLE}.First ;;
  }

  dimension: last {
    type: string
    sql: ${TABLE}.Last ;;
  }
}
