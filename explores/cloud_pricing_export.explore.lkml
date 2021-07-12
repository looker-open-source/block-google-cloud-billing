
explore: cloud_pricing_export {
  label: "Pricing Taxonomy"
  hidden: yes
  # right now only supporting BigQuery, Compute Engine and Cloud Storage for product specific analysis
  sql_always_where: ${service__description} IN (
        'Compute Engine',
        'Cloud Storage',
        'BigQuery',
        'BigQuery Reservation API',
        'BigQuery Storage API') ;;

  join: cloud_pricing_export__product_taxonomy {
    view_label: "Cloud Pricing Export: Product Taxonomy"
    sql: ,UNNEST(${cloud_pricing_export.product_taxonomy}) as cloud_pricing_export__product_taxonomy ;;
    relationship: one_to_many
  }

  join: cloud_pricing_export__geo_taxonomy__regions {
    view_label: "Cloud Pricing Export: Geo Taxonomy Regions"
    sql: ,UNNEST(${cloud_pricing_export.geo_taxonomy__regions}) as cloud_pricing_export__geo_taxonomy__regions ;;
    relationship: one_to_many
  }

  join: cloud_pricing_export__list_price__tiered_rates {
    view_label: "Cloud Pricing Export: List Price Tiered Rates"
    sql: ,UNNEST(${cloud_pricing_export.list_price__tiered_rates}) as cloud_pricing_export__list_price__tiered_rates ;;
    relationship: one_to_many
  }

  join: cloud_pricing_export__sku__destination_migration_mappings {
    view_label: "Cloud Pricing Export: Sku Destination Migration Mappings"
    sql: ,UNNEST(${cloud_pricing_export.sku__destination_migration_mappings}) as cloud_pricing_export__sku__destination_migration_mappings ;;
    relationship: one_to_many
  }

  join: cloud_pricing_export__billing_account_price__tiered_rates {
    view_label: "Cloud Pricing Export: Billing Account Price Tiered Rates"
    sql: ,UNNEST(${cloud_pricing_export.billing_account_price__tiered_rates}) as cloud_pricing_export__billing_account_price__tiered_rates ;;
    relationship: one_to_many
  }
}
