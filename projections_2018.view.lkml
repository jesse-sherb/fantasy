view: projections_2018 {
  sql_table_name: jesseset1.projections_2018 ;;

  dimension: fantasy_points_half_point_ppr {
    label: "Total Points (Half PPR)"
    type: number
    sql: ${TABLE}.FantasyPointsHalfPointPpr ;;
  }
  measure: total_fantasy_points {
    type: sum
    sql: ${fantasy_points_half_point_ppr} ;;
  }

  measure: average_fantasy_points {
    type: average
    sql: ${fantasy_points_half_point_ppr} ;;
  }

  dimension: fantasy_points_per_game_half_point_ppr {
    label: "PPG (Half PPR)"
    type: number
    sql: ${TABLE}.FantasyPointsPerGameHalfPointPPR ;;
  }

  measure: average_points_per_game {
    type: average
    sql: ${fantasy_points_per_game_half_point_ppr} ;;
  }

  dimension: fumbles_forced {
    type: number
    sql: ${TABLE}.FumblesForced ;;
  }

  measure: total_force_fumbles {
    type: sum
    sql: ${fumbles_forced} ;;
  }

  dimension: fumbles_recovered {
    type: number
    sql: ${TABLE}.FumblesRecovered ;;
  }

  measure: total_fumbles_recovered {
    type: sum
    sql: ${fumbles_recovered} ;;
  }

  dimension: interceptions {
    type: number
    sql: ${TABLE}.Interceptions ;;
  }

  measure: total_interceptions{
    label: "Total Interceptions (Def)"
    type: sum
    sql: ${interceptions} ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: passing_interceptions {
    type: number
    sql: ${TABLE}.PassingInterceptions ;;
  }

  measure: total_passing_interceptions{
    label: "Total Interceptions (Off)"
    type: sum
    sql: ${passing_interceptions} ;;
  }

  dimension: passing_touchdowns {
    type: number
    sql: ${TABLE}.PassingTouchdowns ;;
  }

  measure: total_passing_touchdowns {
    type: sum
    sql: ${passing_touchdowns} ;;
  }

  dimension: passing_yards {
    type: number
    sql: ${TABLE}.PassingYards ;;
  }

  measure: total_passing_yards {
    type: sum
    sql: ${passing_yards} ;;
  }

  dimension: games_played {
    type: number
    sql: ${TABLE}.Played ;;
  }

#   measure: total_games_played{
#     type: sum
#     sql: ${games_played} ;;
#   }

  measure: average_games_played {
    type: average
    sql: ${games_played} ;;
  }

  dimension: player_id {
    primary_key: yes
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

  measure: total_receiving_touchdowns {
    type: sum
    sql: ${receiving_touchdowns} ;;
  }

  dimension: receiving_yards {
    type: number
    sql: ${TABLE}.ReceivingYards ;;
  }

  measure: total_receiving_yards {
    type: sum
    sql: ${receiving_yards} ;;
  }

  dimension: receptions {
    type: number
    sql: ${TABLE}.Receptions ;;
  }

  measure: total_receptions {
    type: sum
    sql: ${receptions} ;;
  }

  dimension: rushing_touchdowns {
    type: number
    sql: ${TABLE}.RushingTouchdowns ;;
  }

  measure: total_rushing_touchdowns {
    type: number
    sql: ${rushing_touchdowns} ;;
  }

  dimension: rushing_yards {
    type: number
    sql: ${TABLE}.RushingYards ;;
  }

  measure: total_rushing_yards {
    type: sum
    sql: ${rushing_yards} ;;
  }

  measure: total_touchdowns {
    type: number
    sql: ${total_passing_touchdowns} + ${total_rushing_touchdowns} + ${total_receiving_touchdowns} ;;
  }

  dimension: sacks {
    type: number
    sql: ${TABLE}.Sacks ;;
  }

  measure: total_sacks {
    type: sum
    sql: ${sacks} ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

#   measure: count {
#     type: count
#     drill_fields: [name]
#   }

#   dimension: fantasy_points_half_point_ppr {
#     type: number
#     sql: ${TABLE}.FantasyPointsHalfPointPpr ;;
#   }
#
#   dimension: fantasy_points_per_game_half_point_ppr {
#     type: number
#     sql: ${TABLE}.FantasyPointsPerGameHalfPointPPR ;;
#   }
#
#   dimension: fumbles_forced {
#     type: number
#     sql: ${TABLE}.FumblesForced ;;
#   }
#
#   dimension: fumbles_recovered {
#     type: number
#     sql: ${TABLE}.FumblesRecovered ;;
#   }
#
#   dimension: interceptions {
#     type: number
#     sql: ${TABLE}.Interceptions ;;
#   }
#
#   dimension: name {
#     type: string
#     sql: ${TABLE}.Name ;;
#   }
#
#   dimension: passing_interceptions {
#     type: number
#     sql: ${TABLE}.PassingInterceptions ;;
#   }
#
#   dimension: passing_touchdowns {
#     type: number
#     sql: ${TABLE}.PassingTouchdowns ;;
#   }
#
#   dimension: passing_yards {
#     type: number
#     sql: ${TABLE}.PassingYards ;;
#   }
#
#   dimension: played {
#     type: number
#     sql: ${TABLE}.Played ;;
#   }
#
#   dimension: player_id {
#     primary_key: yes
#     type: number
#     sql: ${TABLE}.PlayerID ;;
#   }
#
#   dimension: position {
#     type: string
#     sql: ${TABLE}.Position ;;
#   }
#
#   dimension: rank {
#     type: number
#     sql: ${TABLE}.Rank ;;
#   }
#
#   dimension: receiving_touchdowns {
#     type: number
#     sql: ${TABLE}.ReceivingTouchdowns ;;
#   }
#
#   dimension: receiving_yards {
#     type: number
#     sql: ${TABLE}.ReceivingYards ;;
#   }
#
#   dimension: receptions {
#     type: number
#     sql: ${TABLE}.Receptions ;;
#   }
#
#   dimension: rushing_touchdowns {
#     type: number
#     sql: ${TABLE}.RushingTouchdowns ;;
#   }
#
#   dimension: rushing_yards {
#     type: number
#     sql: ${TABLE}.RushingYards ;;
#   }
#
#   dimension: sacks {
#     type: number
#     sql: ${TABLE}.Sacks ;;
#   }
#
#   dimension: team {
#     type: string
#     sql: ${TABLE}.Team ;;
#   }
#
#   measure: count {
#     type: count
#     drill_fields: [name]
#   }
}
