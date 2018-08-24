view: adp_2018 {
  derived_table: {
    sql: SELECT *,
             row_number() over(order by averagedraftpositionppr) as draft_rank
        FROM `advance-rush-213318.jesseset1.adp_2018` ;;
  }

  dimension: draft_rank {
    type: number
    sql: ${TABLE}.draft_rank ;;
  }

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
    type: string
    sql: cast(floor(${average_draft_position_ppr}) as string) ;;
    order_by_field: average_draft_position_ppr
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

  measure: total_fantasy_points_string {
    label: "Total Fantasy Points (PPR) Rounded"
    type: string
    sql: ${total_fantasy_points} ;;
  }

  dimension: player_original {
    hidden: yes
    type: string
    sql: ${TABLE}.name ;;
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

  dimension: name {
    hidden: yes
    type: string
    sql: ${player} ;;
    link: {
      label: "{{ value }} Dashboard"
      url: "/dashboards/27?Player={{ value | encode_uri }}"
      icon_url: "https://www.evernote.com/l/An_2A5HrakdGMaKUDcG3DbFRuvrKrwMpJQ8B/image.png"
    }
    link: {
      label: "Fantasy Pros"
      url: "https://www.fantasypros.com/nfl/players/{{ players.first._value }}-{{ players.last._value }}.php"
      icon_url: "https://www.evernote.com/l/An8yLPbWPDJKD5WmgBkegwP-clx54jmTfusB/image.jpg"
    }
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
