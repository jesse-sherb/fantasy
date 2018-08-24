view: position_ranking_4for4 {
  derived_table: {
    sql: SELECT   Row_number() OVER(partition BY pos ORDER BY ff_pts DESC) ranks,
         player,
         pos,
         team
FROM     `advance-rush-213318.jesseset1.4for4_2018_projections`
 ;;
  }

  dimension: position_rank {
    label: "4for4 Position Rank"
    type: number
    sql: ${TABLE}.ranks ;;
  }

  measure: average_position_rank {
    label: "Average 4for4 Position Rank"
    type: average
    sql: ${position_rank} ;;
  }

  measure: position_rank_diff {
    label: "4for4 Position Rank Difference"
    type: number
    sql: ${position_ranking.average_position_rank} - ${average_position_rank} ;;
  }

#   measure: average_position_rank_diff {
#     label: "Average 4for4 Position Rank Difference"
#     type: average
#     sql: ${position_rank} ;;
#   }

  dimension: player_original {
    hidden: yes
    type: string
    sql: ${TABLE}.player ;;
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

  dimension: pos {
    type: string
    sql: ${TABLE}.pos ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.team ;;
  }

}
