resource "datadog_restriction_policy" "restriction_policies" {
  for_each = var.restriction_policies

  resource_id = each.value.resource_id

  dynamic "bindings" {
    for_each = each.value.bindings != null ? each.value.bindings : []
    content {
      principals = bindings.value.principals
      relation   = bindings.value.relation
    }
  }
}

