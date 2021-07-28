include: "/views/*.view.lkml"

explore: recommendations_export {
  label: "Recommendations"
  sql_always_where:
  -- Show only the latest recommendations. Use a grace period of 3 days to avoid data export gaps.
    _PARTITIONDATE = DATE_SUB(CURRENT_DATE(), INTERVAL 3 DAY)
    AND ${cloud_entity_type} = 'PROJECT_NUMBER'
    AND ${state} = 'ACTIVE'
    AND ${recommender} IN ('google.compute.commitment.UsageCommitmentRecommender',
      'google.compute.disk.IdleResourceRecommender',
      'google.compute.instance.IdleResourceRecommender',
      'google.compute.instance.MachineTypeRecommender' )
    AND ${primary_impact__cost_projection__cost__units} IS NOT NULL ;;

  # join: recommendations_export__target_resources {
  #   view_label: "Recommendations Export: Target Resources"
  #   sql: LEFT JOIN UNNEST(${recommendations_export.target_resources}) as recommendations_export__target_resources ;;
  #   relationship: one_to_many
  # }

  # join: recommendations_export__associated_insights {
  #   view_label: "Recommendations Export: Associated Insights"
  #   sql: LEFT JOIN UNNEST(${recommendations_export.associated_insights}) as recommendations_export__associated_insights ;;
  #   relationship: one_to_many
  # }
}
