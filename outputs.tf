output "security_attribute_security_attributes_lookup_id" {
  description = "Map of id values across all security_attribute_security_attributes_lookup, keyed the same as var.security_attribute_security_attributes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_security_attribute_security_attributes.security_attribute_security_attributes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_attribute_security_attributes_lookup_filter" {
  description = "Map of filter values across all security_attribute_security_attributes_lookup, keyed the same as var.security_attribute_security_attributes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_security_attribute_security_attributes.security_attribute_security_attributes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "security_attribute_security_attributes_lookup_security_attribute_namespace_id" {
  description = "Map of security_attribute_namespace_id values across all security_attribute_security_attributes_lookup, keyed the same as var.security_attribute_security_attributes_lookup except keys with no security_attribute_namespace_id are omitted"
  value       = { for k, v in data.oci_security_attribute_security_attributes.security_attribute_security_attributes_lookup : k => v.security_attribute_namespace_id if v.security_attribute_namespace_id != null && length(v.security_attribute_namespace_id) > 0 }
}
output "security_attribute_security_attributes_lookup_security_attributes" {
  description = "Map of security_attributes values across all security_attribute_security_attributes_lookup, keyed the same as var.security_attribute_security_attributes_lookup except keys with no security_attributes are omitted"
  value       = { for k, v in data.oci_security_attribute_security_attributes.security_attribute_security_attributes_lookup : k => v.security_attributes if v.security_attributes != null && length(v.security_attributes) > 0 }
}
output "security_attribute_security_attributes_lookup_state" {
  description = "Map of state values across all security_attribute_security_attributes_lookup, keyed the same as var.security_attribute_security_attributes_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_security_attribute_security_attributes.security_attribute_security_attributes_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

