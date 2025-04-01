include: "/views/recommendations_export.view.lkml"

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
}
