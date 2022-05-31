- dashboard: cost_summary
  title: GCP Summary
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: YTD Costs
    name: YTD Costs
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.period_selected, gcp_billing_export.total_cost]
    filters:
      gcp_billing_export.period: Year
      gcp_billing_export.period_selected: "-NULL"
    sorts: [gcp_billing_export.period_selected desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: "${gcp_billing_export.total_cost}/offset(${gcp_billing_export.total_cost},1)-1",
        label: Change, value_format: !!null '', value_format_name: percent_1}]
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#FFF"
    single_value_title: YTD Costs
    value_format: '[>=1000000]$0.00,,"M";$0.00,"K"'
    comparison_label: YTD Costs
    conditional_formatting: [{type: not equal to, value: -999, background_color: '',
        font_color: "#34A853", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 2
    col: 0
    width: 4
    height: 2
  - title: WTD Costs
    name: WTD Costs
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.period_selected, gcp_billing_export.total_cost]
    filters:
      gcp_billing_export.period: Week
      gcp_billing_export.period_selected: "-NULL"
    sorts: [gcp_billing_export.period_selected desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: "${gcp_billing_export.total_cost}/offset(${gcp_billing_export.total_cost},1)-1",
        label: Change, value_format: !!null '', value_format_name: percent_1}]
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#FFF"
    single_value_title: WTD Costs
    value_format: '[>=1000000]$0.00,,"M";$0.00,"K"'
    comparison_label: YTD Costs
    conditional_formatting: [{type: not equal to, value: -999, background_color: '',
        font_color: "#34A853", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 8
    col: 0
    width: 4
    height: 2
  - title: MTD Costs
    name: MTD Costs
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.period_selected, gcp_billing_export.total_cost]
    filters:
      gcp_billing_export.period: Month
      gcp_billing_export.period_selected: "-NULL"
    sorts: [gcp_billing_export.period_selected desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: "${gcp_billing_export.total_cost}/offset(${gcp_billing_export.total_cost},1)-1",
        label: Change, value_format: !!null '', value_format_name: percent_1}]
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#FFF"
    single_value_title: MTD Costs
    value_format: '[>=1000000]$0.00,,"M";$0.00,"K"'
    comparison_label: YTD Costs
    conditional_formatting: [{type: not equal to, value: -999, background_color: '',
        font_color: "#34A853", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 6
    col: 0
    width: 4
    height: 2
  - title: QTD Costs
    name: QTD Costs
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.period_selected, gcp_billing_export.total_cost]
    filters:
      gcp_billing_export.period: Quarter
      gcp_billing_export.period_selected: "-NULL"
    sorts: [gcp_billing_export.period_selected desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: "${gcp_billing_export.total_cost}/offset(${gcp_billing_export.total_cost},1)-1",
        label: Change, value_format: !!null '', value_format_name: percent_1}]
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#FFF"
    single_value_title: QTD Costs
    value_format: '[>=1000000]$0.00,,"M";$0.00,"K"'
    comparison_label: YTD Costs
    conditional_formatting: [{type: not equal to, value: -999, background_color: '',
        font_color: "#34A853", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 4
    col: 0
    width: 4
    height: 2
  - name: "<b>SPEND TO DATE</b>"
    type: text
    title_text: "<b>SPEND TO DATE</b>"
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: COST VS CREDIT ANALYSIS
    title: COST VS CREDIT ANALYSIS
    merged_queries:
    - model: gcp_billing_block
      explore: gcp_billing_export
      type: table
      fields: [gcp_billing_export.usage_start_week, gcp_billing_export.total_cost]
      fill_fields: [gcp_billing_export.usage_start_week]
      filters:
        gcp_billing_export.usage_start_week: 52 weeks
      sorts: [gcp_billing_export.usage_start_week desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields: []
    - model: gcp_billing_block
      explore: gcp_billing_export
      type: looker_column
      fields: [gcp_billing_export__credits.total_amount, gcp_billing_export.usage_start_week]
      fill_fields: [gcp_billing_export.usage_start_week]
      filters:
        gcp_billing_export.usage_start_week: 52 weeks
      sorts: [gcp_billing_export.usage_start_week desc]
      limit: 500
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
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      defaults_version: 1
      join_fields:
      - field_name: gcp_billing_export.usage_start_week
        source_field_name: gcp_billing_export.usage_start_week
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: net_cost, id: net_cost,
            name: Net Cost}, {axisId: credits, id: credits, name: Credits}, {axisId: total_cost,
            id: total_cost, name: Total Cost}, {axisId: 4_week_average, id: 4_week_average,
            name: 4-Week Net Cost Rolling Avg.}], showLabels: true, showValues: true,
        valueFormat: '[<=1000000]$0,"K";$0,,"M"', unpinAxis: false, tickDensity: default,
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
    stacking: normal
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: last
      num_rows: '1'
    legend_position: center
    series_types:
      4_week_average: line
    point_style: circle_outline
    series_colors:
      net_cost: "#4285F4"
      credits: "#34A853"
      total_cost: "#E8EAED"
      4_week_average: "#5F6368"
    series_labels:
      4_week_average: 4-Week Net Cost Rolling Avg.
    show_value_labels: false
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    hidden_fields: [gcp_billing_export__credits.total_amount, gcp_billing_export.total_cost]
    sorts: [gcp_billing_export.usage_start_week desc]
    dynamic_fields: [{_kind_hint: measure, table_calculation: net_cost, _type_hint: number,
        category: table_calculation, expression: 'if(is_null(${credits}),${gcp_billing_export.total_cost},${gcp_billing_export.total_cost}-${gcp_billing_export__credits.total_amount})',
        label: Net Cost, value_format: !!null '', value_format_name: usd_0}, {_kind_hint: measure,
        table_calculation: credits, _type_hint: number, category: table_calculation,
        expression: "${gcp_billing_export__credits.total_amount}*-1", label: Credits, value_format: !!null '',
        value_format_name: usd_0}, {_kind_hint: measure, table_calculation: total_cost,
        _type_hint: number, category: table_calculation, expression: 'if(is_null(${net_cost}),${gcp_billing_export.total_cost},${gcp_billing_export.total_cost}-${net_cost})',
        label: Total Cost, value_format: !!null '', value_format_name: usd_0}, {_kind_hint: measure,
        table_calculation: 4_week_average, _type_hint: number, category: table_calculation,
        expression: 'mean(offset_list(${net_cost},0,4))', label: 4-Week Average, value_format: !!null '',
        value_format_name: usd_0}]
    row: 12
    col: 7
    width: 17
    height: 7
  - name: "<b>CREDIT ANALYSIS</b>"
    type: text
    title_text: "<b>CREDIT ANALYSIS</b>"
    subtitle_text: ''
    body_text: ''
    row: 10
    col: 0
    width: 24
    height: 2
  - name: TOTAL CREDITS
    title: TOTAL CREDITS
    merged_queries:
    - model: gcp_billing_block
      explore: gcp_billing_export
      type: table
      fields: [merge, gcp_billing_export__credits.total_amount]
      filters:
        gcp_billing_export.usage_start_week: 52 weeks
      limit: 500
      dynamic_fields: [{dimension: merge, _kind_hint: dimension, _type_hint: number,
          category: dimension, expression: '1', label: MERGE, value_format: !!null '',
          value_format_name: !!null ''}]
      query_timezone: America/Los_Angeles
      join_fields: []
    - model: gcp_billing_block
      explore: gcp_billing_export
      type: table
      fields: [merge, gcp_billing_export.total_cost]
      filters:
        gcp_billing_export.usage_start_week: 52 weeks
      limit: 500
      dynamic_fields: [{dimension: merge, _kind_hint: dimension, _type_hint: number,
          category: dimension, expression: '1', label: MERGE, value_format: !!null '',
          value_format_name: !!null ''}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: merge
        source_field_name: merge
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: false
    custom_color_enabled: true
    custom_color: "#5F6368"
    show_single_value_title: false
    single_value_title: TOTAL CREDITS
    value_format: '[<=1000000]$0.0,"K";$0.0,,"M"'
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: net_cost, id: net_cost,
            name: Net Cost}, {axisId: credits, id: credits, name: Credits}, {axisId: total_cost,
            id: total_cost, name: Total Cost}, {axisId: 4_week_average, id: 4_week_average,
            name: 4-Week Net Cost Rolling Avg.}], showLabels: true, showValues: true,
        valueFormat: '[<=1000000]$0,"K";$0,,"M"', unpinAxis: false, tickDensity: default,
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
    stacking: normal
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: last
      num_rows: '1'
    legend_position: center
    series_types: {}
    point_style: circle_outline
    series_colors:
      net_cost: "#4285F4"
      credits: "#34A853"
      total_cost: "#E8EAED"
      4_week_average: "#5F6368"
    series_labels:
      4_week_average: 4-Week Net Cost Rolling Avg.
    show_value_labels: false
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: single_value
    hidden_fields: [credits, net_cost, total_cost, 4_week_average, merge, gcp_billing_export.total_cost]
    dynamic_fields: [{_kind_hint: measure, table_calculation: net_cost, _type_hint: number,
        category: table_calculation, expression: 'if(is_null(${credits}),${gcp_billing_export.total_cost},${gcp_billing_export.total_cost}-${gcp_billing_export__credits.total_amount})',
        label: Net Cost, value_format: !!null '', value_format_name: usd_0}, {_kind_hint: measure,
        table_calculation: credits, _type_hint: number, category: table_calculation,
        expression: "${gcp_billing_export__credits.total_amount}*-1", label: Credits, value_format: !!null '',
        value_format_name: usd_0}, {_kind_hint: measure, table_calculation: total_cost,
        _type_hint: number, category: table_calculation, expression: 'if(is_null(${net_cost}),${gcp_billing_export.total_cost},${gcp_billing_export.total_cost}-${net_cost})',
        label: Total Cost, value_format: !!null '', value_format_name: usd_0}, {_kind_hint: measure,
        table_calculation: 4_week_average, _type_hint: number, category: table_calculation,
        expression: 'mean(offset_list(${net_cost},0,4))', label: 4-Week Average, value_format: !!null '',
        value_format_name: usd_0}, {_kind_hint: measure, table_calculation: percent_of_total_cost,
        _type_hint: number, category: table_calculation, expression: "${gcp_billing_export__credits.total_amount}/${gcp_billing_export.total_cost}",
        label: Percent of Total Cost, value_format: !!null '', value_format_name: percent_0}]
    row: 12
    col: 0
    width: 7
    height: 3
  - name: PERCENT OF SPEND
    title: PERCENT OF SPEND
    title_hidden: true
    merged_queries:
    - model: gcp_billing_block
      explore: gcp_billing_export
      type: table
      fields: [gcp_billing_export.usage_start_week, gcp_billing_export.total_cost]
      fill_fields: [gcp_billing_export.usage_start_week]
      filters:
        gcp_billing_export.usage_start_week: 52 weeks
      sorts: [gcp_billing_export.usage_start_week desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields: []
    - model: gcp_billing_block
      explore: gcp_billing_export
      type: looker_column
      fields: [gcp_billing_export__credits.total_amount, gcp_billing_export.usage_start_week]
      fill_fields: [gcp_billing_export.usage_start_week]
      filters:
        gcp_billing_export.usage_start_week: 52 weeks
      sorts: [gcp_billing_export.usage_start_week desc]
      limit: 500
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
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      defaults_version: 1
      join_fields:
      - field_name: gcp_billing_export.usage_start_week
        source_field_name: gcp_billing_export.usage_start_week
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: gcp_billing_export__credits.total_amount,
            id: gcp_billing_export__credits.total_amount, name: Total Credit Amount}, {axisId: net_cost,
            id: net_cost, name: Net Cost}], showLabels: true, showValues: true, valueFormat: '',
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
    stacking: percent
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: last
      num_rows: '1'
    legend_position: center
    font_size: '8'
    series_types:
      4_week_average: line
    point_style: circle_outline
    series_colors:
      net_cost: "#E8EAED"
      credits: "#34A853"
      total_cost: "#E8EAED"
      4_week_average: "#5F6368"
      gcp_billing_export__credits.total_amount: "#34A853"
    series_labels:
      4_week_average: 4-Week Net Cost Rolling Avg.
      gcp_billing_export__credits.total_amount: Credit%
      net_cost: Net Cost%
    show_value_labels: false
    label_density: 25
    label_color: [transparent, black]
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#545454",
        line_value: ".25"}, {reference_type: line, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#545454", line_value: ".5"}]
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    hidden_fields: [gcp_billing_export.total_cost, credits, total_cost, 4_week_average]
    sorts: [gcp_billing_export.usage_start_week desc]
    dynamic_fields: [{_kind_hint: measure, table_calculation: net_cost, _type_hint: number,
        category: table_calculation, expression: 'if(is_null(${credits}),${gcp_billing_export.total_cost},${gcp_billing_export.total_cost}-${gcp_billing_export__credits.total_amount})',
        label: Net Cost, value_format: !!null '', value_format_name: usd_0}, {_kind_hint: measure,
        table_calculation: credits, _type_hint: number, category: table_calculation,
        expression: "${gcp_billing_export__credits.total_amount}*-1", label: Credits, value_format: !!null '',
        value_format_name: usd_0}, {_kind_hint: measure, table_calculation: total_cost,
        _type_hint: number, category: table_calculation, expression: 'if(is_null(${net_cost}),${gcp_billing_export.total_cost},${gcp_billing_export.total_cost}-${net_cost})',
        label: Total Cost, value_format: !!null '', value_format_name: usd_0}, {_kind_hint: measure,
        table_calculation: 4_week_average, _type_hint: number, category: table_calculation,
        expression: 'mean(offset_list(${net_cost},0,4))', label: 4-Week Average, value_format: !!null '',
        value_format_name: usd_0}]
    row: 19
    col: 7
    width: 17
    height: 4
  - title: CREDIT USAGE BY PROJECT
    name: CREDIT USAGE BY PROJECT
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_bar
    fields: [gcp_billing_export__credits.total_amount, gcp_billing_export.project__name]
    filters:
      gcp_billing_export.usage_start_week: 52 weeks
    sorts: [gcp_billing_export__credits.total_amount desc]
    limit: 10
    dynamic_fields: [{_kind_hint: measure, table_calculation: running_total, _type_hint: number,
        category: table_calculation, expression: 'running_total(${gcp_billing_export__credits.total_amount})',
        label: Running Total, value_format: !!null '', value_format_name: usd_0, is_disabled: true}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: gcp_billing_export__credits.total_amount,
            id: gcp_billing_export__credits.total_amount, name: Total Credit Amount}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    label_value_format: '[<=1000000]$0.0,"K";$0.0,,"M"'
    series_types: {}
    show_null_points: true
    defaults_version: 1
    interpolation: linear
    hidden_fields:
    listen: {}
    row: 15
    col: 0
    width: 7
    height: 8
  - title: TOP BILLED PROJECTS
    name: TOP BILLED PROJECTS
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_waterfall
    fields: [gcp_billing_export.project__name, gcp_billing_export.total_cost]
    sorts: [gcp_billing_export.total_cost desc]
    limit: 10
    dynamic_fields: [{_kind_hint: measure, table_calculation: total_cost, _type_hint: number,
        category: table_calculation, expression: "${gcp_billing_export.total_cost}+0", label: Total
          Cost, value_format: '[>=1000000]$0.0,,"M";$0.0,"K"', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    up_color: "#34A853"
    down_color: false
    total_color: "#9AA0A6"
    show_value_labels: true
    show_x_axis_ticks: true
    show_x_axis_label: false
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: false
    y_axis_gridlines: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    label_color: ["#FFF"]
    x_axis_gridlines: false
    show_view_names: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [gcp_billing_export.total_cost]
    listen: {}
    row: 25
    col: 0
    width: 24
    height: 8
  - name: "<b>COST BREAKDOWN DETAILS</b>"
    type: text
    title_text: "<b>COST BREAKDOWN DETAILS</b>"
    subtitle_text: ''
    body_text: ''
    row: 23
    col: 0
    width: 24
    height: 2
  - name: SERVICE AREA
    title: SERVICE AREA
    merged_queries:
    - model: gcp_billing_block
      explore: gcp_billing_export
      type: looker_grid
      fields: [gcp_billing_export.service__description, gcp_billing_export.total_cost]
      sorts: [gcp_billing_export.total_cost desc]
      limit: 500
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      x_axis_gridlines: false
      y_axis_gridlines: true
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
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      series_types: {}
    - model: gcp_billing_block
      explore: gcp_billing_export
      type: table
      fields: [gcp_billing_export__credits.total_amount, gcp_billing_export.service__description]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: gcp_billing_export.service__description
        source_field_name: gcp_billing_export.service__description
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
      gcp_billing_export__credits.total_amount:
        is_active: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      gcp_billing_export__credits.total_amount: '[<=1000000]$0.0,"K";$0.0,,"M"'
    type: looker_grid
    series_types: {}
    row: 33
    col: 0
    width: 12
    height: 6
  - name: SKU
    title: SKU
    merged_queries:
    - model: gcp_billing_block
      explore: gcp_billing_export
      type: looker_grid
      fields: [gcp_billing_export.total_cost, gcp_billing_export.sku__description]
      sorts: [gcp_billing_export.total_cost desc]
      limit: 500
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      x_axis_gridlines: false
      y_axis_gridlines: true
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
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      series_types: {}
    - model: gcp_billing_block
      explore: gcp_billing_export
      type: table
      fields: [gcp_billing_export__credits.total_amount, gcp_billing_export.sku__description]
      sorts: [gcp_billing_export__credits.total_amount desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: gcp_billing_export.sku__description
        source_field_name: gcp_billing_export.sku__description
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
      gcp_billing_export__credits.total_amount:
        is_active: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      gcp_billing_export__credits.total_amount: '[<=1000000]$0.0,"K";$0.0,,"M"'
    type: looker_grid
    series_types: {}
    row: 33
    col: 12
    width: 12
    height: 6
  - name: AVAILABILITY REGION
    title: AVAILABILITY REGION
    merged_queries:
    - model: gcp_billing_block
      explore: gcp_billing_export
      type: looker_grid
      fields: [gcp_billing_export.total_cost, gcp_billing_export.location__region]
      sorts: [gcp_billing_export.total_cost desc]
      limit: 500
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      x_axis_gridlines: false
      y_axis_gridlines: true
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
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      series_types: {}
    - model: gcp_billing_block
      explore: gcp_billing_export
      type: table
      fields: [gcp_billing_export__credits.total_amount, gcp_billing_export.location__region]
      sorts: [gcp_billing_export__credits.total_amount desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: gcp_billing_export.location__region
        source_field_name: gcp_billing_export.location__region
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
      gcp_billing_export__credits.total_amount:
        is_active: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      gcp_billing_export__credits.total_amount: '[<=1000000]$0.0,"K";$0.0,,"M"'
    type: looker_grid
    series_types: {}
    row: 39
    col: 0
    width: 12
    height: 6
  - name: BILLING ACCOUNT
    title: BILLING ACCOUNT
    merged_queries:
    - model: gcp_billing_block
      explore: gcp_billing_export
      type: looker_grid
      fields: [gcp_billing_export.total_cost, gcp_billing_export.billing_account_id]
      sorts: [gcp_billing_export.total_cost desc]
      limit: 500
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      x_axis_gridlines: false
      y_axis_gridlines: true
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
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      series_types: {}
    - model: gcp_billing_block
      explore: gcp_billing_export
      type: table
      fields: [gcp_billing_export__credits.total_amount, gcp_billing_export.billing_account_id]
      sorts: [gcp_billing_export__credits.total_amount desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: gcp_billing_export.billing_account_id
        source_field_name: gcp_billing_export.billing_account_id
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
      gcp_billing_export__credits.total_amount:
        is_active: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      gcp_billing_export__credits.total_amount: '[<=1000000]$0.0,"K";$0.0,,"M"'
    type: looker_grid
    series_types: {}
    row: 39
    col: 12
    width: 12
    height: 6
  - title: YEAR OVER YEAR SPEND
    name: YEAR OVER YEAR SPEND
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_line
    fields: [gcp_billing_export.total_cost, gcp_billing_export.usage_start_month_name, gcp_billing_export.usage_start_year]
    pivots: [gcp_billing_export.usage_start_year]
    filters:
      gcp_billing_export.usage_start_year: 3 years ago for 3 years,1 years
      gcp_billing_export.total_cost: NOT NULL
    sorts: [gcp_billing_export.usage_start_year, gcp_billing_export.usage_start_month_name]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: gcp_billing_export.total_cost,
            id: 2020 - gcp_billing_export.total_cost, name: '2020'}, {axisId: gcp_billing_export.total_cost,
            id: 2021 - gcp_billing_export.total_cost, name: '2021'}], showLabels: true, showValues: true,
        valueFormat: '[>=1000000]$0.0,,"M";$0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 2
    col: 4
    width: 20
    height: 8
