output "web_pubsubs_id" {
  description = "Map of id values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "web_pubsubs_aad_auth_enabled" {
  description = "Map of aad_auth_enabled values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.aad_auth_enabled if v.aad_auth_enabled != null }
}
output "web_pubsubs_capacity" {
  description = "Map of capacity values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.capacity if v.capacity != null }
}
output "web_pubsubs_external_ip" {
  description = "Map of external_ip values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.external_ip if v.external_ip != null && length(v.external_ip) > 0 }
}
output "web_pubsubs_hostname" {
  description = "Map of hostname values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.hostname if v.hostname != null && length(v.hostname) > 0 }
}
output "web_pubsubs_identity" {
  description = "Map of identity values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "web_pubsubs_live_trace" {
  description = "Map of live_trace values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.live_trace if v.live_trace != null && length(v.live_trace) > 0 }
}
output "web_pubsubs_local_auth_enabled" {
  description = "Map of local_auth_enabled values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.local_auth_enabled if v.local_auth_enabled != null }
}
output "web_pubsubs_location" {
  description = "Map of location values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "web_pubsubs_name" {
  description = "Map of name values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "web_pubsubs_primary_access_key" {
  description = "Map of primary_access_key values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.primary_access_key if v.primary_access_key != null && length(v.primary_access_key) > 0 }
  sensitive   = true
}
output "web_pubsubs_primary_connection_string" {
  description = "Map of primary_connection_string values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.primary_connection_string if v.primary_connection_string != null && length(v.primary_connection_string) > 0 }
  sensitive   = true
}
output "web_pubsubs_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "web_pubsubs_public_port" {
  description = "Map of public_port values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.public_port if v.public_port != null }
}
output "web_pubsubs_resource_group_name" {
  description = "Map of resource_group_name values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "web_pubsubs_secondary_access_key" {
  description = "Map of secondary_access_key values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.secondary_access_key if v.secondary_access_key != null && length(v.secondary_access_key) > 0 }
  sensitive   = true
}
output "web_pubsubs_secondary_connection_string" {
  description = "Map of secondary_connection_string values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.secondary_connection_string if v.secondary_connection_string != null && length(v.secondary_connection_string) > 0 }
  sensitive   = true
}
output "web_pubsubs_server_port" {
  description = "Map of server_port values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.server_port if v.server_port != null }
}
output "web_pubsubs_sku" {
  description = "Map of sku values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "web_pubsubs_tags" {
  description = "Map of tags values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "web_pubsubs_tls_client_cert_enabled" {
  description = "Map of tls_client_cert_enabled values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.tls_client_cert_enabled if v.tls_client_cert_enabled != null }
}
output "web_pubsubs_version" {
  description = "Map of version values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.version if v.version != null && length(v.version) > 0 }
}

