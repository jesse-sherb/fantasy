connection: "fantasy"

# include all the views
include: "*.view"

datagroup: fantasy_football_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fantasy_football_default_datagroup

explore: regular_season_2017 {
  view_label: "2017 Stats"
  join: projections_2018 {
    view_label: "2018 Projections"
    sql_on: ${regular_season_2017.player_id} = ${projections_2018.player_id} ;;
    relationship: one_to_one
    type: full_outer
  }
  join: adp_2018 {
    view_label: "2018 Projections"
    sql_on: ${projections_2018.player_id} = ${adp_2018.player_id} ;;
    relationship: one_to_one
    type: full_outer
  }
  join: snap_counts_2017 {
    view_label: "2017 Team Snap Counts"
    sql_on: ${regular_season_2017.player_id} = ${snap_counts_2017.player_id} ;;
    relationship: one_to_one
    type: full_outer
  }
  join: game_log_2017 {
    view_label: "2017 Game Log"
    sql_on: ${regular_season_2017.player_id} = ${game_log_2017.player_id} ;;
    relationship: many_to_one
    type: full_outer
  }
  join: position_ranking {
    view_label: "2018 Projections"
    sql_on: ${projections_2018.player_id} = ${position_ranking.playerid};;
    relationship: one_to_one
    type: left_outer
    fields: [position_rank]
  }

}
