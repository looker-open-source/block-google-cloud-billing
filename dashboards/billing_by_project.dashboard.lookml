- dashboard: billing_by_project
  preferred_viewer: dashboards-next
  title: Billing By Project
  layout: newspaper
  elements:
  - title: Project Name(s)
    name: Project Name(s)
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export_project.name_filter]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    listen:
      Project: gcp_billing_export_project.name
    row: 0
    col: 0
    width: 9
    height: 4
  - title: Daily Project Cost 30 Day Comparison
    name: Daily Project Cost 30 Day Comparison
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_area
    fields: [gcp_billing_export.total_cost, gcp_billing_export.usage_start_date]
    filters:
      gcp_billing_export.export_time: 60 days
    sorts: [gcp_billing_export.usage_start_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: previous_30_days, label: Previous 30 Days,
        expression: 'offset(${gcp_billing_export.total_cost}, 30)', value_format: !!null '',
        value_format_name: eur, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '30'
    legend_position: center
    label_value_format: ''
    series_types: {}
    point_style: none
    series_colors:
      previous_30_days: "#79808C"
    series_labels:
      gcp_billing_export.total_cost: Daily Cost
      previous_30_days: Daily Cost 30 Days Prior
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    listen:
      Project: gcp_billing_export_project.name
    row: 12
    col: 0
    width: 24
    height: 12
  - title: Cost vs All Projects
    name: Cost vs All Projects
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.total_cost, gcp_billing_export_project.name, gcp_billing_export_project.project_compare]
    sorts: [gcp_billing_export.total_cost desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_of_all_project_cost, label: Percent
          of All Project Cost, expression: 'sum(if(${gcp_billing_export_project.project_compare},
          ${gcp_billing_export.total_cost}, 0)) / sum(${gcp_billing_export.total_cost})',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: amount_billed_from_all_projects,
        label: Amount Billed From All Projects, expression: 'sum(${gcp_billing_export.total_cost})',
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: false
    value_format: "#0.00% of"
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Billed from All Projects in Time Period
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '30'
    legend_position: center
    label_value_format: ''
    series_types: {}
    point_style: none
    series_colors:
      previous_30_days: "#79808C"
    series_labels:
      gcp_billing_export.total_cost: Daily Cost
      previous_30_days: Daily Cost 30 Days Prior
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_fields: [gcp_billing_export.total_cost, gcp_billing_export.total_credit]
    listen:
      Project: gcp_billing_export_project.project_comparison
      Time Period: gcp_billing_export.usage_start_date
    row: 4
    col: 0
    width: 9
    height: 4
  - title: Service Cost Allocation
    name: Service Cost Allocation
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_bar
    fields: [gcp_billing_export.total_cost, service_name_sort.top_10_services]
    filters: {}
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: gcp_billing_export.total_cost,
            id: gcp_billing_export.total_cost, name: Total Cost}], showLabels: false,
        showValues: true, valueFormat: "#", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Project: gcp_billing_export_project.name
      Time Period: gcp_billing_export.usage_start_date
    row: 0
    col: 9
    width: 15
    height: 12
  - title: Project Cost
    name: Project Cost
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.total_cost, gcp_billing_export_project.name, gcp_billing_export_project.project_compare,
      gcp_billing_export__credits.total_amount]
    sorts: [gcp_billing_export.total_cost desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_of_all_project_cost, label: Percent
          of All Project Cost, expression: 'sum(if(${gcp_billing_export_project.project_compare},
          ${gcp_billing_export.total_cost}, 0)) / sum(${gcp_billing_export.total_cost})',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: amount_billed_from_all_projects,
        label: Amount Billed From All Projects, expression: 'sum(${gcp_billing_export.total_cost})',
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_cost_of_project, label: Total
          Cost of Project, expression: 'sum(if(${gcp_billing_export_project.project_compare},
          ${gcp_billing_export.total_cost}, 0))', value_format: !!null '', value_format_name: eur,
        _kind_hint: measure, _type_hint: number}, {table_calculation: total_credit_applied_to_project,
        label: Total Credit Applied to Project, expression: 'sum(if(${gcp_billing_export_project.project_compare},
          ${gcp_billing_export__credits.total_amount}, 0))', value_format: !!null '',
        value_format_name: eur, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    single_value_title: Total Cost after Credits
    value_format: ''
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: In Credits Applied
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '30'
    legend_position: center
    label_value_format: ''
    series_types: {}
    point_style: none
    series_colors:
      previous_30_days: "#79808C"
    series_labels:
      gcp_billing_export.total_cost: Daily Cost
      previous_30_days: Daily Cost 30 Days Prior
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_fields: [percent_of_all_project_cost, amount_billed_from_all_projects,
      gcp_billing_export.total_cost, gcp_billing_export.total_credit, gcp_billing_export__credits.total_amount]
    hidden_points_if_no: [gcp_billing_export_project.project_compare]
    listen:
      Project: gcp_billing_export_project.project_comparison
      Time Period: gcp_billing_export.usage_start_date
    row: 8
    col: 0
    width: 9
    height: 4
  filters:
  - name: Project
    title: Project
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: gcp_billing_block
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export_project.name
  - name: Time Period
    title: Time Period
    type: date_filter
    default_value: 1 months
    allow_multiple_values: true
    required: false
