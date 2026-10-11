variable "restriction_policies" {
  description = <<EOT
Map of restriction_policies, attributes below
Required:
    - resource_id
Optional:
    - bindings (block):
        - principals (required)
        - relation (required)
EOT

  type = map(object({
    resource_id = string
    bindings = optional(list(object({
      principals = set(string)
      relation   = string
    })))
  }))
}

