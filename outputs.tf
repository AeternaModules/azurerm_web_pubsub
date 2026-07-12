output "web_pubsubs_aad_auth_enabled" {
  description = "Map of aad_auth_enabled values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.aad_auth_enabled }
}
output "web_pubsubs_capacity" {
  description = "Map of capacity values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.capacity }
}
output "web_pubsubs_external_ip" {
  description = "Map of external_ip values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.external_ip }
}
output "web_pubsubs_hostname" {
  description = "Map of hostname values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.hostname }
}
output "web_pubsubs_identity" {
  description = "Map of identity values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.identity }
}
output "web_pubsubs_live_trace" {
  description = "Map of live_trace values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.live_trace }
}
output "web_pubsubs_local_auth_enabled" {
  description = "Map of local_auth_enabled values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.local_auth_enabled }
}
output "web_pubsubs_location" {
  description = "Map of location values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.location }
}
output "web_pubsubs_name" {
  description = "Map of name values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.name }
}
output "web_pubsubs_primary_access_key" {
  description = "Map of primary_access_key values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.primary_access_key }
  sensitive   = true
}
output "web_pubsubs_primary_connection_string" {
  description = "Map of primary_connection_string values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.primary_connection_string }
  sensitive   = true
}
output "web_pubsubs_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.public_network_access_enabled }
}
output "web_pubsubs_public_port" {
  description = "Map of public_port values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.public_port }
}
output "web_pubsubs_resource_group_name" {
  description = "Map of resource_group_name values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.resource_group_name }
}
output "web_pubsubs_secondary_access_key" {
  description = "Map of secondary_access_key values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.secondary_access_key }
  sensitive   = true
}
output "web_pubsubs_secondary_connection_string" {
  description = "Map of secondary_connection_string values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.secondary_connection_string }
  sensitive   = true
}
output "web_pubsubs_server_port" {
  description = "Map of server_port values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.server_port }
}
output "web_pubsubs_sku" {
  description = "Map of sku values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.sku }
}
output "web_pubsubs_tags" {
  description = "Map of tags values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.tags }
}
output "web_pubsubs_tls_client_cert_enabled" {
  description = "Map of tls_client_cert_enabled values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.tls_client_cert_enabled }
}
output "web_pubsubs_version" {
  description = "Map of version values across all web_pubsubs, keyed the same as var.web_pubsubs"
  value       = { for k, v in azurerm_web_pubsub.web_pubsubs : k => v.version }
}

