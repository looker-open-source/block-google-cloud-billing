view: gcp_billing_export_labels {

  ### Field description reference https://cloud.google.com/billing/docs/how-to/export-data-bigquery
  ### DIMENSIONS

  dimension: label_id {
    primary_key: yes
    hidden: yes
    sql: CONCAT(CAST(${gcp_billing_export.pk} as STRING), COALESCE(${label_key}, 0), COALESCE(${label_value}, 0) ;;
  }

  dimension: label_key {
    group_label: "Labels"
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: label_value {
    group_label: "Labels"
    type: string
    sql: ${TABLE}.value ;;
  }
}
