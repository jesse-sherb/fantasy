view: snap_counts_2017 {
  sql_table_name: jesseset1.snap_counts_2017 ;;

  dimension: fantasy_point_snap_percentage {
    type: number
    sql: ${TABLE}.FantasyPointSnapPercentage ;;
  }

  dimension: fantasy_points_half_point_ppr {
    type: number
    sql: ${TABLE}.FantasyPointsHalfPointPpr ;;
  }

  dimension: intended_touch_snap_percentage {
    type: number
    sql: ${TABLE}.IntendedTouchSnapPercentage ;;
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

  dimension: rush_snap_percentage {
    type: number
    sql: ${TABLE}.RushSnapPercentage ;;
  }

  dimension: snaps_per_game {
    type: number
    sql: ${TABLE}.SnapsPerGame ;;
  }

  dimension: snaps_played {
    type: number
    sql: ${TABLE}.SnapsPlayed ;;
  }

  dimension: snaps_played_percentage {
    type: number
    sql: ${TABLE}.SnapsPlayedPercentage ;;
  }

  dimension: target_snap_percentage {
    type: number
    sql: ${TABLE}.TargetSnapPercentage ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: touch_snap_percentage {
    type: number
    sql: ${TABLE}.TouchSnapPercentage ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
