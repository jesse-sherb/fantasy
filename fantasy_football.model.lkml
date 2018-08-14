connection: "fantasy"

# include all the views
include: "*.view"

datagroup: fantasy_football_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fantasy_football_default_datagroup

explore: 2017_regular_season {}
