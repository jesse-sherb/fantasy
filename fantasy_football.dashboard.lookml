- dashboard: fantasy_football
  title: Fantasy Football
  layout: newspaper
  elements:
  - name: <img src="https://www.evernote.com/l/An8gbirIekJOIp1hAKFAI_JocGhxiaQNJS0B/image.png"
      width="100" height="131.5"/>
    type: text
    title_text: <img src="https://www.evernote.com/l/An8gbirIekJOIp1hAKFAI_JocGhxiaQNJS0B/image.png"
      width="100" height="131.5"/>
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Top Projected Players (Total Points)
    name: Top Projected Players (Total Points)
    model: fantasy_football
    explore: regular_season_2017
    type: looker_line
    fields:
    - projections_2018.name
    - regular_season_2017.total_fantasy_points
    - projections_2018.total_fantasy_points
    - adp_2018.average_draft_position
    filters:
      adp_2018.average_draft_position: NOT NULL
    sorts:
    - adp_2018.average_draft_position
    limit: 10
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: circle_outline
    series_labels:
      regular_season_2017.total_fantasy_points: 2017 Total
      projections_2018.total_fantasy_points: 2018 Projections
    series_types:
      projections_2018.total_fantasy_points: column
      adp_2018.average_draft_position: scatter
    series_point_styles:
      adp_2018.average_draft_position: diamond
    limit_displayed_rows: false
    y_axes:
    - label: Fantasy Points
      orientation: left
      series:
      - id: regular_season_2017.total_fantasy_points
        name: 2017 Total
        axisId: regular_season_2017.total_fantasy_points
      - id: projections_2018.total_fantasy_points
        name: 2018 Projections
        axisId: projections_2018.total_fantasy_points
      showLabels: true
      showValues: true
      minValue:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: right
      series:
      - id: adp_2018.average_draft_position
        name: Average Draft Position
        axisId: adp_2018.average_draft_position
      showLabels: true
      showValues: false
      maxValue:
      minValue: -100
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
      Position: projections_2018.position
      Team: projections_2018.team
      Player: projections_2018.name
    row: 6
    col: 0
    width: 12
    height: 10
  - title: Best Player Available
    name: Best Player Available
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - projections_2018.name
    - adp_2018.average_draft_position
    filters:
      adp_2018.average_draft_position: NOT NULL
    sorts:
    - adp_2018.average_draft_position
    limit: 500
    custom_color_enabled: true
    custom_color: "#0f3365"
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
    series_types: {}
    hidden_fields:
    - adp_2018.average_draft_position
    listen:
      Position: projections_2018.position
      Team: projections_2018.team
      Player: projections_2018.name
    row: 3
    col: 0
    width: 6
    height: 3
  - title: Top 25 RB's Available
    name: Top 25 RB's Available
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - projections_2018.player_count
    filters:
      projections_2018.position: RB
      position_ranking.position_rank: "<=25"
    limit: 500
    custom_color_enabled: true
    custom_color: "#0f3365"
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
    series_types: {}
    hidden_fields: []
    listen:
      Player: projections_2018.name
    row: 3
    col: 6
    width: 6
    height: 3
  - title: Top 25 WR's Available
    name: Top 25 WR's Available
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - projections_2018.player_count
    filters:
      projections_2018.position: WR
      position_ranking.position_rank: "<=25"
    limit: 500
    custom_color_enabled: true
    custom_color: "#0f3365"
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
    series_types: {}
    hidden_fields: []
    listen:
      Player: projections_2018.name
    row: 3
    col: 12
    width: 6
    height: 3
  - title: Top 10 QB's Available
    name: Top 10 QB's Available
    model: fantasy_football
    explore: regular_season_2017
    type: single_value
    fields:
    - projections_2018.player_count
    filters:
      projections_2018.position: QB
      position_ranking.position_rank: "<=10"
    limit: 500
    custom_color_enabled: true
    custom_color: "#0f3365"
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
    series_types: {}
    hidden_fields: []
    listen:
      Player: projections_2018.name
    row: 3
    col: 18
    width: 6
    height: 3
  - title: Top 10 Projected (TD's & Yardage)
    name: Top 10 Projected (TD's & Yardage)
    model: fantasy_football
    explore: regular_season_2017
    type: looker_area
    fields:
    - projections_2018.name
    - projections_2018.total_yards
    - projections_2018.total_touchdowns
    - projections_2018.total_fantasy_points
    sorts:
    - projections_2018.total_fantasy_points desc
    limit: 10
    stacking: ''
    colors:
    - "#c42b20"
    - "#0f3365"
    - "#8a8a8a"
    - "#072242"
    - "#b5b5b5"
    show_value_labels: true
    label_density: 25
    label_color:
    - white
    - "#0f3365"
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: circle_outline
    series_colors: {}
    series_types:
      projections_2018.total_touchdowns: column
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: projections_2018.total_touchdowns
        name: 2018 Projections Total Touchdowns
        axisId: projections_2018.total_touchdowns
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: right
      series:
      - id: projections_2018.total_yards
        name: 2018 Projections Total Yards
        axisId: projections_2018.total_yards
      showLabels: true
      showValues: true
      maxValue: 9000
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
    hidden_fields:
    - projections_2018.total_fantasy_points
    listen:
      Position: projections_2018.position
      Team: projections_2018.team
      Player: projections_2018.name
    row: 6
    col: 12
    width: 12
    height: 10
  - title: Points Per Week Player Cohort (Best Available)
    name: Points Per Week Player Cohort (Best Available)
    model: fantasy_football
    explore: regular_season_2017
    type: looker_line
    fields:
    - game_log_2017.week
    - game_log_2017.average_points_per_game
    - game_log_2017.name
    - adp_2018.average_draft_position_ppr
    pivots:
    - game_log_2017.name
    - adp_2018.average_draft_position_ppr
    filters:
      game_log_2017.week: NOT NULL
    sorts:
    - game_log_2017.week
    - adp_2018.average_draft_position_ppr
    - game_log_2017.name
    limit: 500
    column_limit: 5
    dynamic_fields:
    - table_calculation: running_total
      label: Running Total
      expression: running_total(${game_log_2017.average_points_per_game})
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
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
    show_null_points: true
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - game_log_2017.average_points_per_game
    listen:
      Position: projections_2018.position
      Team: projections_2018.team
      Player: projections_2018.name
    row: 16
    col: 12
    width: 12
    height: 8
  - title: Points Per Snap
    name: Points Per Snap
    model: fantasy_football
    explore: regular_season_2017
    type: looker_line
    fields:
    - snap_counts_2017.name
    - adp_2018.average_draft_position_ppr
    - snap_counts_2017.average_points_per_snap
    - snap_counts_2017.average_snaps_per_game
    filters:
      adp_2018.average_draft_position_ppr: NOT NULL
      snap_counts_2017.name: "-NULL"
    sorts:
    - adp_2018.average_draft_position_ppr
    limit: 10
    stacking: ''
    colors:
    - "#0f3365"
    - "#8a8a8a"
    - "#072242"
    - "#b5b5b5"
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: circle_outline
    series_colors: {}
    series_types:
      snap_counts_2017.average_snaps_per_game: column
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: snap_counts_2017.average_snaps_per_game
        name: Average Snaps per Game
        axisId: snap_counts_2017.average_snaps_per_game
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: right
      series:
      - id: snap_counts_2017.average_points_per_snap
        name: Average Points per Snap
        axisId: snap_counts_2017.average_points_per_snap
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
    hidden_fields:
    - adp_2018.average_draft_position_ppr
    listen:
      Position: projections_2018.position
      Team: projections_2018.team
      Player: projections_2018.name
    row: 24
    col: 12
    width: 12
    height: 7
  - title: Points Over Season Cohort
    name: Points Over Season Cohort
    model: fantasy_football
    explore: regular_season_2017
    type: looker_line
    fields:
    - game_log_2017.week
    - game_log_2017.position
    - game_log_2017.average_points_per_game
    pivots:
    - game_log_2017.position
    filters:
      game_log_2017.key_position: 'Yes'
    sorts:
    - game_log_2017.position 0
    - game_log_2017.week
    limit: 500
    dynamic_fields:
    - table_calculation: running_total
      label: Running Total
      expression: running_total(${game_log_2017.average_points_per_game})
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
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
    show_null_points: true
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - game_log_2017.average_points_per_game
    listen:
      Team: projections_2018.team
      Player: projections_2018.name
    row: 16
    col: 0
    width: 12
    height: 8
  - title: "% of Overall Projected Points by Position"
    name: "% of Overall Projected Points by Position"
    model: fantasy_football
    explore: regular_season_2017
    type: looker_pie
    fields:
    - projections_2018.position
    - projections_2018.total_fantasy_points
    filters:
      projections_2018.key_position: 'Yes'
    sorts:
    - projections_2018.total_fantasy_points desc
    limit: 500
    value_labels: labels
    label_type: labPer
    inner_radius: 50
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
    series_types: {}
    listen:
      Team: projections_2018.team
      Player: projections_2018.name
    row: 24
    col: 0
    width: 12
    height: 7
  - title: Performance vs. Draft Pick by Position 2017
    name: Performance vs. Draft Pick by Position 2017
    model: fantasy_football
    explore: regular_season_2017
    type: looker_scatter
    fields:
    - adp_2017.draft_rank
    - regular_season_2017.position
    - regular_season_2017.total_fantasy_points
    pivots:
    - regular_season_2017.position
    filters:
      adp_2017.draft_rank: NOT NULL
      regular_season_2017.key_position: 'Yes'
    sorts:
    - adp_2017.draft_rank
    - regular_season_2017.position
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: circle
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: QB - regular_season_2017.total_fantasy_points
        name: QB
        axisId: regular_season_2017.total_fantasy_points
      - id: RB - regular_season_2017.total_fantasy_points
        name: RB
        axisId: regular_season_2017.total_fantasy_points
      - id: TE - regular_season_2017.total_fantasy_points
        name: TE
        axisId: regular_season_2017.total_fantasy_points
      - id: WR - regular_season_2017.total_fantasy_points
        name: WR
        axisId: regular_season_2017.total_fantasy_points
      showLabels: true
      showValues: true
      minValue: 0
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
    trend_lines: []
    show_null_points: false
    row: 31
    col: 0
    width: 12
    height: 8
  - title: Performance vs. Draft Pick by Position 2018 (Proj.)
    name: Performance vs. Draft Pick by Position 2018 (Proj.)
    model: fantasy_football
    explore: regular_season_2017
    type: looker_scatter
    fields:
    - adp_2018.draft_rank
    - projections_2018.total_fantasy_points
    - projections_2018.position
    pivots:
    - projections_2018.position
    filters:
      adp_2018.draft_rank: NOT NULL
      projections_2018.key_position: 'Yes'
    sorts:
    - projections_2018.position 0
    - adp_2018.draft_rank
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: circle
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: QB - regular_season_2017.total_fantasy_points
        name: QB
        axisId: regular_season_2017.total_fantasy_points
      - id: RB - regular_season_2017.total_fantasy_points
        name: RB
        axisId: regular_season_2017.total_fantasy_points
      - id: TE - regular_season_2017.total_fantasy_points
        name: TE
        axisId: regular_season_2017.total_fantasy_points
      - id: WR - regular_season_2017.total_fantasy_points
        name: WR
        axisId: regular_season_2017.total_fantasy_points
      showLabels: true
      showValues: true
      minValue: 0
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
    trend_lines: []
    show_null_points: false
    listen: {}
    row: 31
    col: 12
    width: 12
    height: 8
  - title: Draft Board
    name: Draft Board
    model: fantasy_football
    explore: regular_season_2017
    type: table
    fields:
    - projections_2018.name
    - projections_2018.position
    - adp_2018.bye_week
    - adp_2018.average_draft_position
    - projections_2018.total_fantasy_points
    - projections_2018.total_touchdowns
    - projections_2018.total_yards
    - regular_season_2017.total_fantasy_points
    - regular_season_2017.total_touchdowns
    - regular_season_2017.total_yards
    - position_ranking.position_rank
    - snap_counts_2017.average_targets
    - snap_counts_2017.average_touches
    filters:
      adp_2018.average_draft_position: NOT NULL
    sorts:
    - adp_2018.average_draft_position
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      projections_2018.name: Player
      projections_2018.position: Position
      adp_2018.bye_week: Bye
      adp_2018.average_draft_position: Avg. Draft Pos.
      projections_2018.total_fantasy_points: Proj. Points
      projections_2018.total_touchdowns: Proj. TD
      projections_2018.total_yards: Proj. Yards
      regular_season_2017.total_fantasy_points: 2017 Total Points
      regular_season_2017.total_touchdowns: 2017 Total TD
      regular_season_2017.total_yards: 2017 Total Yards
      snap_counts_2017.average_targets: 2017 Tgt Per Game
      snap_counts_2017.average_touches: 2017 Touch Per Game
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#aab6c6"
        - "#8294ad"
        - "#426493"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - projections_2018.total_touchdowns
      - regular_season_2017.total_touchdowns
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#aab6c6"
        - "#8294ad"
        - "#426493"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - projections_2018.total_yards
      - regular_season_2017.total_yards
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#aab6c6"
        - "#8294ad"
        - "#426493"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - projections_2018.total_fantasy_points
      - regular_season_2017.total_fantasy_points
    - type: high to low
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#aab6c6"
        - "#8294ad"
        - "#426493"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - adp_2018.average_draft_position
    - type: high to low
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#aab6c6"
        - "#8294ad"
        - "#426493"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - position_ranking.position_rank
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#aab6c6"
        - "#8294ad"
        - "#426493"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - snap_counts_2017.average_targets
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#aab6c6"
        - "#8294ad"
        - "#426493"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - snap_counts_2017.average_touches
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
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
    series_types: {}
    listen:
      Position: projections_2018.position
      Team: projections_2018.team
      Player: projections_2018.name
    row: 39
    col: 0
    width: 24
    height: 11
  filters:
  - name: Position
    title: Position
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fantasy_football
    explore: regular_season_2017
    listens_to_filters:
    - Player
    field: projections_2018.position
  - name: Team
    title: Team
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fantasy_football
    explore: regular_season_2017
    listens_to_filters:
    - Player
    field: projections_2018.team
  - name: Player
    title: Player
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fantasy_football
    explore: regular_season_2017
    listens_to_filters:
    - Team
    - Position
    field: projections_2018.name
