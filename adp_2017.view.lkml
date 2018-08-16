view: adp_2017 {
  sql_table_name: jesseset1.adp_2017 ;;

  dimension: age {
    type: string
    sql: ${TABLE}.Age ;;
  }

  dimension: average_draft_position_ppr {
    label: "ADP"
    type: number
    sql: ${TABLE}.AverageDraftPositionPPR ;;
  }

  dimension: rounded_adp {
    label: "Rounded ADP"
    type: number
    sql: round(${average_draft_position_ppr}) ;;
  }

  measure: average_draft_position {
    label: "Average Draft Position"
    type: average
    sql: ${average_draft_position_ppr} ;;
  }

  dimension: bye_week {
    type: number
    sql: ${TABLE}.ByeWeek ;;
  }

  dimension: fantasy_points_ppr {
    label: "Fantasy Points (PPR)"
    type: number
    sql: ${TABLE}.FantasyPointsPPR ;;
  }

  measure: average_fantasy_points {
    label: "Average Fantasy Points (PPR)"
    type: average
    sql: ${fantasy_points_ppr} ;;
  }

  measure: total_fantasy_points {
    label: "Total Fantasy Points (PPR)"
    type: sum
    sql: ${fantasy_points_ppr} ;;
  }

  dimension: name {
    hidden: yes
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: passing_interceptions {
    hidden: yes
    type: number
    sql: ${TABLE}.PassingInterceptions ;;
  }

  dimension: passing_touchdowns {
    hidden: yes
    type: number
    sql: ${TABLE}.PassingTouchdowns ;;
  }

  dimension: passing_yards {
    hidden: yes
    type: number
    sql: ${TABLE}.PassingYards ;;
  }

  dimension: player_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.PlayerID ;;
  }

  dimension: position {
    hidden: yes
    type: string
    sql: ${TABLE}.Position ;;
  }

  dimension: rank {
    hidden: yes
    type: number
    sql: ${TABLE}.Rank ;;
  }

  dimension: receiving_touchdowns {
    hidden: yes
    type: number
    sql: ${TABLE}.ReceivingTouchdowns ;;
  }

  dimension: receiving_yards {
    hidden: yes
    type: number
    sql: ${TABLE}.ReceivingYards ;;
  }

  dimension: receptions {
    hidden: yes
    type: number
    sql: ${TABLE}.Receptions ;;
  }

  dimension: rushing_touchdowns {
    hidden: yes
    type: number
    sql: ${TABLE}.RushingTouchdowns ;;
  }

  dimension: rushing_yards {
    hidden: yes
    type: number
    sql: ${TABLE}.RushingYards ;;
  }

  dimension: team {
    hidden: yes
    type: string
    sql: ${TABLE}.Team ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [name]
  }
}
