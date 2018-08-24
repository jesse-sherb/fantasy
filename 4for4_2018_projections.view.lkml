view: fourfour_2018_projections {
  sql_table_name: jesseset1.`4for4_2018_projections` ;;

  dimension: adp {
    type: number
    sql: ${TABLE}.ADP ;;
  }

  dimension: pts_proj {
    label: "4for4 Points Proj."
    type: number
    sql: ${TABLE}.FF_Pts ;;
    value_format_name: decimal_2
  }

  measure: total_pts {
    label: "4for4 Total Points Proj."
    type: sum
    sql: ${pts_proj} ;;
    value_format_name: decimal_2
  }

  measure: average_pts {
    label: "4for4 Average Points Proj."
    type: average
    sql: ${pts_proj} ;;
    value_format_name: decimal_2
  }

  measure: gc_difference {
    label: "4for4 Proj. vs. GC"
    type: number
    sql: ${total_pts} - ${projections_2018.total_fantasy_points} ;;
    value_format_name: decimal_2
  }

  dimension: fg {
    type: number
    sql: ${TABLE}.FG ;;
  }

  dimension: fum {
    type: number
    sql: ${TABLE}.Fum ;;
  }

  dimension: int {
    type: number
    sql: ${TABLE}.INT ;;
  }

  dimension: pa1_d {
    type: number
    sql: ${TABLE}.Pa1D ;;
  }

  dimension: pass_att {
    type: number
    sql: ${TABLE}.Pass_Att ;;
  }

  dimension: pass_comp {
    type: number
    sql: ${TABLE}.Pass_Comp ;;
  }

  dimension: pass_td {
    type: number
    sql: ${TABLE}.Pass_TD ;;
  }

  dimension: pass_yds {
    type: number
    sql: ${TABLE}.Pass_Yds ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.PID ;;
  }

  dimension: player_original {
    hidden: yes
    type: string
    sql: ${TABLE}.Player ;;
  }

  dimension: player_no_period {
    hidden: yes
    type: string
    sql: replace(${player_original},".","") ;;
  }

  dimension: player {
    hidden: yes
    type: string
    sql: replace(${player_no_period},"'","") ;;
  }

  dimension: pos {
    type: string
    sql: ${TABLE}.Pos ;;
  }

  dimension: rec {
    type: number
    sql: ${TABLE}.Rec ;;
  }

  dimension: rec1_d {
    type: number
    sql: ${TABLE}.Rec1D ;;
  }

  dimension: rec_td {
    type: number
    sql: ${TABLE}.Rec_TD ;;
  }

  dimension: rec_yds {
    type: number
    sql: ${TABLE}.Rec_Yds ;;
  }

  dimension: ru1_d {
    type: number
    sql: ${TABLE}.Ru1D ;;
  }

  dimension: rush_att {
    type: number
    sql: ${TABLE}.Rush_Att ;;
  }

  dimension: rush_td {
    type: number
    sql: ${TABLE}.Rush_TD ;;
  }

  dimension: rush_yds {
    type: number
    sql: ${TABLE}.Rush_Yds ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: xp {
    type: number
    sql: ${TABLE}.XP ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
