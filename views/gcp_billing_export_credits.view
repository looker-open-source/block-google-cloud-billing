view: gcp_billing_export_credits {

  ### Field description reference https://cloud.google.com/billing/docs/how-to/export-data-bigquery
  ### DIMENSIONS

  dimension: credit_id {
    primary_key: yes
    hidden: yes
    sql: CONCAT(CAST(${gcp_billing_export.pk} as STRING), COALESCE(${credit_name}, "0")) ;;
  }

  dimension: credit_amount {
    group_label: "Credits"
    description: "Amount of credit given to billing account (always negative)"
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: credit_name {
    group_label: "Credits"
    description: "Name of the credit applied to account"
    type: string
    sql: ${TABLE}.name ;;
  }

  ### MEASURES

  measure: total_credit {
    description: "The total credit given to billing account (always negative)"
    type: sum
    sql: ${credit_amount} ;;
    value_format_name: decimal_2
    html: {% if gcp_billing_export.currency._value == 'GBP' %}
            <a href="{{ link }}"> £{{ rendered_value }}</a>
          {% elsif gcp_billing_export.currency == 'USD' %}
            <a href="{{ link }}"> ${{ rendered_value }}</a>
          {% elsif gcp_billing_export.currency == 'EUR' %}
            <a href="{{ link }}"> €{{ rendered_value }}</a>
          {% else %}
            <a href="{{ link }}"> {{ rendered_value }} {{ gcp_billing_export.currency._value }}</a>
          {% endif %} ;;
    drill_fields: [gcp_billing_export_credits.credit_name,gcp_billing_export_credits.credit_amount]
  }

}
