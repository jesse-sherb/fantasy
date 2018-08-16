view: snap_counts_2017 {
  sql_table_name: jesseset1.snap_counts_2017 ;;

  dimension: fantasy_point_snap_percentage {
    label: "Points Per 100 Snaps"
    type: number
    sql: ${TABLE}.FantasyPointSnapPercentage ;;
    value_format_name: percent_2
  }

   measure: average_points_per_100_snaps {
    label: "Average Points Per 100 Snaps"
    type: average
    sql: ${fantasy_point_snap_percentage} ;;
    value_format_name: decimal_2
   }

  measure: average_points_per_snap {
    type: number
    sql: ${regular_season_2017.total_fantasy_points}/${total_snaps_played} ;;
    value_format_name: decimal_3

  }

#   dimension: fantasy_points_half_point_ppr {
#     type: number
#     sql: ${TABLE}.FantasyPointsHalfPointPpr ;;
#   }

  dimension: intended_touch_snap_percentage {
    type: number
    sql: ${TABLE}.IntendedTouchSnapPercentage ;;
    value_format_name: percent_2
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: played {
    type: number
    sql: ${TABLE}.Played ;;
  }

  dimension: player_id {
    hidden: yes
    type: number
    sql: ${TABLE}.PlayerID ;;
  }
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

  dimension: rush_snap_percentage {
    type: number
    sql: ${TABLE}.RushSnapPercentage ;;
    value_format_name: percent_2
  }

  dimension: snaps_per_game {
    type: number
    sql: ${TABLE}.SnapsPerGame ;;
  }

  measure: total_snaps_per_game {
    type: sum
    sql: ${snaps_per_game} ;;
  }

  measure: average_snaps_per_game {
    type: average
    sql: ${snaps_per_game} ;;
  }

  dimension: snaps_played {
    type: number
    sql: ${TABLE}.SnapsPlayed ;;
  }

  measure: total_snaps_played {
    type: sum
    sql: ${snaps_played} ;;
    }

  dimension: snaps_played_percentage {
    type: number
    sql: ${TABLE}.SnapsPlayedPercentage ;;
    value_format_name: percent_2
  }

  measure: average_snaps_played_percentage {
    type: average
    sql: ${snaps_played_percentage} ;;
    value_format_name: percent_2
  }

  dimension: target_snap_percentage {
    type: number
    sql: ${TABLE}.TargetSnapPercentage ;;
    value_format_name: percent_2
  }

  measure: average_target_snap_percentage {
    type: average
    sql: ${target_snap_percentage} ;;
    value_format_name: percent_2
  }

#   dimension: team {
#     type: string
#     sql: ${TABLE}.Team ;;
#   }

  dimension: touch_snap_percentage {
    type: number
    sql: ${TABLE}.TouchSnapPercentage ;;
    value_format_name: percent_2
  }

  measure: average_touch_snap_percentage {
    type: average
    sql: ${touch_snap_percentage} ;;
    value_format_name: percent_2
  }

#   measure: count {
#     type: count
#     drill_fields: [name]
#   }
}
