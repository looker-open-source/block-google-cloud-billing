- dashboard: billing
  preferred_viewer: dashboards-next
  title: Billing
  layout: newspaper
  elements:
  - title: Total Billing (Last Month)
    name: Total Billing (Last Month)
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.total_cost]
    filters:
      gcp_billing_export.usage_start_date: last month
    sorts: [gcp_billing_export.total_cost desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: budget, label: Budget, expression: '750',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}]
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Project: gcp_billing_export_project.name
      Service: gcp_billing_export_service.description
    row: 0
    col: 12
    width: 6
    height: 6
  - title: Total Billing (This Month)
    name: Total Billing (This Month)
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.total_cost]
    filters:
      gcp_billing_export.usage_start_date: 1 months
    sorts: [gcp_billing_export.total_cost desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: budget, label: Budget, expression: '750',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}]
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Project: gcp_billing_export_project.name
      Service: gcp_billing_export_service.description
    row: 0
    col: 0
    width: 6
    height: 6
  - title: Billing (This Year)
    name: Billing (This Year)
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.total_cost]
    filters:
      gcp_billing_export.usage_start_year: 1 years
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Project: gcp_billing_export_project.name
      Service: gcp_billing_export_service.description
    row: 0
    col: 18
    width: 6
    height: 6
  - title: Billing by Month
    name: Billing by Month
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_column
    fields: [gcp_billing_export.total_cost, gcp_billing_export.usage_start_month]
    fill_fields: [gcp_billing_export.usage_start_month]
    filters:
      gcp_billing_export.usage_start_date: 12 months
    sorts: [gcp_billing_export.usage_start_month desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: '', orientation: left, series: [{axisId: gcp_billing_export.total_cost,
            id: gcp_billing_export.total_cost, name: GCP Billing Total Cost}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    label_value_format: ''
    series_types: {}
    point_style: none
    series_colors:
      gcp_billing_export.total_cost: "#592EC2"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Project: gcp_billing_export_project.name
      Service: gcp_billing_export_service.description
    row: 25
    col: 0
    width: 24
    height: 8
  - title: Predicted Total Monthly Costs
    name: Predicted Total Monthly Costs
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.usage_start_date, gcp_billing_export.total_cost]
    fill_fields: [gcp_billing_export.usage_start_date]
    filters:
      gcp_billing_export.usage_start_date: 1 months
    sorts: [gcp_billing_export.usage_start_date]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: x_bar, label: x_bar, expression: 'mean(${gcp_billing_export.total_cost})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: cov, label: cov, expression: 'sum((${day}-${y_bar})*(${gcp_billing_export.total_cost}-${x_bar}))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: var, label: var, expression: 'sum((${gcp_billing_export.total_cost}-${x_bar})*(${gcp_billing_export.total_cost}-${x_bar}))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: beta, label: beta, expression: "${cov}/${var}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}, {table_calculation: alpha, label: alpha, expression: "${y_bar}-${beta}*${x_bar}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}, {table_calculation: predicted_cost, label: Predicted
          Cost, expression: "${alpha} + ${beta}*${day}", value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: number},
      {table_calculation: total_cost, label: Total cost, expression: 'sum(${gcp_billing_export.total_cost})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: actual_cumulative_cost, label: Actual
          Cumulative Cost, expression: 'running_total(${gcp_billing_export.total_cost})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: predicted_cumulative_cost, label: Predicted
          Cumulative Cost, expression: 'running_total(if(extract_days(${gcp_billing_export.usage_start_date})>
          extract_days(now()),${predicted_cost},${gcp_billing_export.total_cost}))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: day, label: Day, expression: 'extract_days(${gcp_billing_export.usage_start_date})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}, {table_calculation: y_bar, label: y_bar, expression: 'mean(${day})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}, {table_calculation: total_predicted_costs, label: Total
          Predicted Costs, expression: 'max(${predicted_cumulative_cost})', value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: dimension, _type_hint: number}]
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    hidden_fields: [day, y_bar, x_bar, cov, var, beta, alpha, gcp_billing_export.total_cost,
      total_cost, predicted_cost, predicted_cumulative_cost, actual_cumulative_cost]
    hidden_series: [predicted_cost]
    single_value_title: Predicted Total Monthly Cost
    listen:
      Project: gcp_billing_export_project.name
      Service: gcp_billing_export_service.description
    row: 0
    col: 6
    width: 6
    height: 6
  - title: Billing by Service
    name: Billing by Service
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_column
    fields: [gcp_billing_export.usage_start_date, service_name_sort.top_10_services,
      gcp_billing_export.total_cost]
    pivots: [service_name_sort.top_10_services]
    filters:
      gcp_billing_export.usage_start_date: 1 months
      gcp_billing_export_project.name: ''
      gcp_billing_export_service.description: ''
    sorts: [service_name_sort.top_10_services, gcp_billing_export.usage_start_date
        desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
    y_axes: [{label: '', orientation: left, series: [{axisId: BigQuery - gcp_billing_export.total_cost,
            id: BigQuery - gcp_billing_export.total_cost, name: BigQuery}, {axisId: Cloud
              AutoML - gcp_billing_export.total_cost, id: Cloud AutoML - gcp_billing_export.total_cost,
            name: Cloud AutoML}, {axisId: Cloud Composer - gcp_billing_export.total_cost,
            id: Cloud Composer - gcp_billing_export.total_cost, name: Cloud Composer},
          {axisId: Cloud Dataflow - gcp_billing_export.total_cost, id: Cloud Dataflow
              - gcp_billing_export.total_cost, name: Cloud Dataflow}, {axisId: Cloud
              DNS - gcp_billing_export.total_cost, id: Cloud DNS - gcp_billing_export.total_cost,
            name: Cloud DNS}, {axisId: Cloud Machine Learning Engine - gcp_billing_export.total_cost,
            id: Cloud Machine Learning Engine - gcp_billing_export.total_cost, name: Cloud
              Machine Learning Engine}, {axisId: Cloud SQL - gcp_billing_export.total_cost,
            id: Cloud SQL - gcp_billing_export.total_cost, name: Cloud SQL}, {axisId: Cloud
              Storage - gcp_billing_export.total_cost, id: Cloud Storage - gcp_billing_export.total_cost,
            name: Cloud Storage}, {axisId: Compute Engine - gcp_billing_export.total_cost,
            id: Compute Engine - gcp_billing_export.total_cost, name: Compute Engine},
          {axisId: Maps API - gcp_billing_export.total_cost, id: Maps API - gcp_billing_export.total_cost,
            name: Maps API}, {axisId: Other - gcp_billing_export.total_cost, id: Other
              - gcp_billing_export.total_cost, name: Other}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    stacking: normal
    limit_displayed_rows: false
    hidden_series: []
    legend_position: center
    colors: ['palette: Mixed Dark']
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 6
    col: 12
    width: 12
    height: 11
  - title: Billing by Project
    name: Billing by Project
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_column
    fields: [gcp_billing_export.usage_start_date, project_name_sort.top_10_projects,
      gcp_billing_export.total_cost]
    pivots: [project_name_sort.top_10_projects]
    filters:
      gcp_billing_export.usage_start_date: 1 months
      gcp_billing_export_project.name: ''
      gcp_billing_export_service.description: ''
    sorts: [project_name_sort.top_10_projects 0, gcp_billing_export.usage_start_date
        desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
        reverse: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear}]
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
    stacking: normal
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '14'
    hidden_series: []
    hide_legend: false
    legend_position: center
    colors: ['palette: Mixed Dark']
    series_types:
      total_cost_30_days_ago: area
      calculation_1: area
    point_style: none
    series_colors: {}
    series_labels: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: [total_cost_30_days_ago]
    listen: {}
    row: 6
    col: 0
    width: 12
    height: 11
  - title: Top 10 Billing by Project (This Month)
    name: Top 10 Billing by Project (This Month)
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_bar
    fields: [project_name_sort.top_10_projects, gcp_billing_export.total_cost]
    filters:
      gcp_billing_export.usage_start_date: 1 months
    sorts: [project_name_sort.top_10_projects]
    column_limit: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: gcp_billing_export.total_cost,
            id: gcp_billing_export.total_cost, name: Total Cost}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '11'
    hidden_series: []
    legend_position: center
    colors: ['palette: Mixed Dark']
    series_types: {}
    point_style: none
    series_colors:
      gcp_billing_export.total_cost: "#72D16D"
      total_cost: "#4276BE"
      gcp_billing_export.total_cost_project_link: "#72D16D"
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields:
    listen:
      Project: gcp_billing_export_project.name
      Service: gcp_billing_export_service.description
    row: 17
    col: 0
    width: 12
    height: 8
  - title: Top 10 Billing by Service (This Month)
    name: Top 10 Billing by Service (This Month)
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_bar
    fields: [service_name_sort.top_10_services, gcp_billing_export.total_cost]
    filters:
      gcp_billing_export.usage_start_date: 1 months
    sorts: [service_name_sort.top_10_services]
    column_limit: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: gcp_billing_export.total_cost,
            id: gcp_billing_export.total_cost, name: GCP Billing Total Cost}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '11'
    hidden_series: []
    legend_position: center
    colors: ['palette: Mixed Dark']
    series_types: {}
    point_style: none
    series_colors:
      gcp_billing_export.total_cost: "#4276BE"
      gcp_billing_export.total_cost_service_link: "#4276BE"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields:
    listen:
      Project: gcp_billing_export_project.name
      Service: gcp_billing_export_service.description
    row: 17
    col: 12
    width: 12
    height: 8
  filters:
  - name: Service
    title: Service
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: gcp_billing_block
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export_service.description
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