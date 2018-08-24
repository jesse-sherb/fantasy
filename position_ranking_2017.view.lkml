view: position_ranking_2017 {
    derived_table: {
      sql: SELECT   Row_number() OVER(partition BY position ORDER BY FantasyPointsHalfPointPpr desc) rank,
         playerid,
         NAME,
         position
FROM     `advance-rush-213318.jesseset1.2017_Regular_Season`
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

    dimension: position {
      type: string
      sql: ${TABLE}.position ;;
    }

    set: detail {
      fields: [position_rank, playerid, name, position]
    }
  }
