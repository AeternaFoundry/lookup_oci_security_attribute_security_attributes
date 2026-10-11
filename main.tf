data "oci_security_attribute_security_attributes" "security_attribute_security_attributes_lookup" {
  for_each = var.security_attribute_security_attributes_lookup

  security_attribute_namespace_id = each.value.security_attribute_namespace_id
  state                           = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

