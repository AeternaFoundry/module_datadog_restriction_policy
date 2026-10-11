output "restriction_policies_id" {
  description = "Map of id values across all restriction_policies, keyed the same as var.restriction_policies except keys with no id are omitted"
  value       = { for k, v in datadog_restriction_policy.restriction_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "restriction_policies_bindings" {
  description = "Map of bindings values across all restriction_policies, keyed the same as var.restriction_policies except keys with no bindings are omitted"
  value       = { for k, v in datadog_restriction_policy.restriction_policies : k => v.bindings if v.bindings != null && length(v.bindings) > 0 }
}
output "restriction_policies_resource_id" {
  description = "Map of resource_id values across all restriction_policies, keyed the same as var.restriction_policies except keys with no resource_id are omitted"
  value       = { for k, v in datadog_restriction_policy.restriction_policies : k => v.resource_id if v.resource_id != null && length(v.resource_id) > 0 }
}

