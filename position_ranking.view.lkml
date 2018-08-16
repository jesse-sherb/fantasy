view: position_ranking {
  derived_table: {
    sql: SELECT   Row_number() OVER(partition BY position ORDER BY FantasyPointsHalfPointPpr desc) rank,
         playerid,
         NAME,
         position
FROM     `advance-rush-213318.jesseset1.projections_2018`
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: position_rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: playerid {
    type: number
    sql: ${TABLE}.playerid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }

  set: detail {
    fields: [position_rank, playerid, name, position]
  }
}
