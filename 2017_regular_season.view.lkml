view: 2017_regular_season {
  sql_table_name: jesseset1.`2017_Regular_Season` ;;

  dimension: fantasy_points_half_point_ppr {
    type: number
    sql: ${TABLE}.FantasyPointsHalfPointPpr ;;
  }

  dimension: fantasy_points_per_game_half_point_ppr {
    type: number
    sql: ${TABLE}.FantasyPointsPerGameHalfPointPPR ;;
  }

  dimension: fumbles_forced {
    type: number
    sql: ${TABLE}.FumblesForced ;;
  }

  dimension: fumbles_recovered {
    type: number
    sql: ${TABLE}.FumblesRecovered ;;
  }

  dimension: interceptions {
    type: number
    sql: ${TABLE}.Interceptions ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: passing_interceptions {
    type: number
    sql: ${TABLE}.PassingInterceptions ;;
  }

  dimension: passing_touchdowns {
    type: number
    sql: ${TABLE}.PassingTouchdowns ;;
  }

  dimension: passing_yards {
    type: number
    sql: ${TABLE}.PassingYards ;;
  }

  dimension: played {
    type: number
    sql: ${TABLE}.Played ;;
  }

  dimension: player_id {
    type: number
    sql: ${TABLE}.PlayerID ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.Position ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.Rank ;;
  }

  dimension: receiving_touchdowns {
    type: number
    sql: ${TABLE}.ReceivingTouchdowns ;;
  }

  dimension: receiving_yards {
    type: number
    sql: ${TABLE}.ReceivingYards ;;
  }

  dimension: receptions {
    type: number
    sql: ${TABLE}.Receptions ;;
  }

  dimension: rushing_touchdowns {
    type: number
    sql: ${TABLE}.RushingTouchdowns ;;
  }

  dimension: rushing_yards {
    type: number
    sql: ${TABLE}.RushingYards ;;
  }

  dimension: sacks {
    type: number
    sql: ${TABLE}.Sacks ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
