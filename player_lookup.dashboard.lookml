- dashboard: player_lookup
  title: Player Lookup
  layout: newspaper
  elements:
  - name: <font color="#0f3365" size="6" weight="bold">2018 Projections</font>
    type: text
    title_text: <font color="#0f3365" size="6" weight="bold">2018 Projections</font>
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Total Yards
    name: Total Yards
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - projections_2018.total_yards
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 4
    col: 12
    width: 6
    height: 2
  - title: Total Touchdowns
    name: Total Touchdowns
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - projections_2018.total_touchdowns
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 4
    col: 6
    width: 6
    height: 2
  - title: Total Receptions
    name: Total Receptions
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - projections_2018.total_receptions
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 4
    col: 18
    width: 6
    height: 2
  - title: Average Draft Pick
    name: Average Draft Pick
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - adp_2018.average_draft_position_ppr
    sorts:
    - adp_2018.average_draft_position_ppr
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 2
    col: 0
    width: 6
    height: 2
  - title: Team
    name: Team
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - projections_2018.team
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 2
    col: 18
    width: 6
    height: 2
  - title: Bye Week
    name: Bye Week
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - adp_2018.bye_week
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 2
    col: 6
    width: 6
    height: 2
  - title: Total Points
    name: Total Points
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - projections_2018.total_fantasy_points
    - projections_2018.average_points_per_game
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Points Per Game
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 4
    col: 0
    width: 6
    height: 2
  - title: Position Rank
    name: Position Rank
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - position_ranking.position_rank
    - projections_2018.position
    filters:
      position_ranking.position_rank: NOT NULL
    sorts:
    - position_ranking.position_rank
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 2
    col: 12
    width: 6
    height: 2
    title: Total Points3
  - name: <font color="#0f3365" size="6" weight="bold">2017 Stats</font>
    type: text
    title_text: <font color="#0f3365" size="6" weight="bold">2017 Stats</font>
    row: 6
    col: 0
    width: 24
    height: 2
    name: Total Points3
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - regular_season_2017.total_fantasy_points
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Points Per Game
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 8
    col: 0
    width: 6
    height: 2
  - title: Total Yards2
    name: Total Yards2
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - regular_season_2017.total_yards
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 8
    col: 18
    width: 6
    height: 2
  - title: Total Touchdowns2
    name: Total Touchdowns2
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - regular_season_2017.total_touchdowns
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 8
    col: 12
    width: 6
    height: 2
  - title: Position Rank2
    name: Position Rank2
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - position_ranking_2017.position_rank
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 8
    col: 6
    width: 6
    height: 2
  - title: Average Points Per Snap
    name: Average Points Per Snap
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - snap_counts_2017.average_points_per_snap
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Points Per Game
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 10
    col: 0
    width: 6
    height: 2
  - title: Average Snaps Per Game
    name: Average Snaps Per Game
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - snap_counts_2017.average_snaps_per_game
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Points Per Game
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 10
    col: 6
    width: 6
    height: 2
  - title: Average Touches Per Game
    name: Average Touches Per Game
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - snap_counts_2017.average_touches
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Points Per Game
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 10
    col: 12
    width: 6
    height: 2
  - title: Average Targets Per Game
    name: Average Targets Per Game
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - snap_counts_2017.average_targets
    limit: 500
    custom_color_enabled: true
    custom_color: "#c42b20"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Points Per Game
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    series_types: {}
    listen:
      Player: projections_2018.name
    row: 10
    col: 18
    width: 6
    height: 2
  - title: Running Total Of Points Per Week
    name: Running Total Of Points Per Week
    model: fantasy_football
    explore: regular_season_2017
    type: looker_line
    fields:
    - game_log_2017.week
    - game_log_2017.running_total_points
    sorts:
    - game_log_2017.week
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: circle_outline
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: false
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Player: projections_2018.name
    row: 12
    col: 0
    width: 12
    height: 7
  - title: Yards & Touchdowns Per Game
    name: Yards & Touchdowns Per Game
    model: fantasy_football
    explore: regular_season_2017
    type: looker_area
    fields:
    - game_log_2017.week
    - game_log_2017.total_touchdowns
    - game_log_2017.total_yards
    sorts:
    - game_log_2017.week
    limit: 500
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types:
      game_log_2017.total_yards: column
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: game_log_2017.total_touchdowns
        name: 2017 Game Log Total Touchdowns
        axisId: game_log_2017.total_touchdowns
      showLabels: true
      showValues: true
      maxValue: 5
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: right
      series:
      - id: game_log_2017.total_yards
        name: 2017 Game Log Total Yards
        axisId: game_log_2017.total_yards
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    listen:
      Player: projections_2018.name
    row: 12
    col: 12
    width: 12
    height: 7
  filters:
  - name: Player
    title: Player
    type: field_filter
    default_value: Todd Gurley
    allow_multiple_values: true
    required: true
    model: fantasy_football
    explore: regular_season_2017
    listens_to_filters: []
    field: projections_2018.name
