################ Constants ################

constant: RECOMMENDATION_TABLE {
  value: "instance.recommender.recommendations_export_v2"
  export: override_optional
}

constant: BILLING_TABLE {
  value: "instance.billing.gcp_billing_export_public"
  export: override_optional
}

constant: PRICING_TABLE {
  value: "instance.billing.cloud_pricing_export"
  export: override_optional
}

constant: CONNECTION {
  value: "bq-connection"
  export: override_optional
}
