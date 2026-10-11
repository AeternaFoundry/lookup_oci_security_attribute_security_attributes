variable "security_attribute_security_attributes_lookup" {
  description = <<EOT
Map of security_attribute_security_attributes_lookup, attributes below
Required:
    - security_attribute_namespace_id
Optional:
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    security_attribute_namespace_id = string
    state                           = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

