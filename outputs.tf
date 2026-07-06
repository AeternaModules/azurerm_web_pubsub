output "web_pubsubs" {
  description = "All web_pubsub resources"
  value       = azurerm_web_pubsub.web_pubsubs
  sensitive   = true
}
output "web_pubsubs_aad_auth_enabled" {
  description = "List of aad_auth_enabled values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.aad_auth_enabled]
}
output "web_pubsubs_capacity" {
  description = "List of capacity values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.capacity]
}
output "web_pubsubs_external_ip" {
  description = "List of external_ip values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.external_ip]
}
output "web_pubsubs_hostname" {
  description = "List of hostname values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.hostname]
}
output "web_pubsubs_identity" {
  description = "List of identity values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.identity]
}
output "web_pubsubs_live_trace" {
  description = "List of live_trace values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.live_trace]
}
output "web_pubsubs_local_auth_enabled" {
  description = "List of local_auth_enabled values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.local_auth_enabled]
}
output "web_pubsubs_location" {
  description = "List of location values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.location]
}
output "web_pubsubs_name" {
  description = "List of name values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.name]
}
output "web_pubsubs_primary_access_key" {
  description = "List of primary_access_key values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.primary_access_key]
  sensitive   = true
}
output "web_pubsubs_primary_connection_string" {
  description = "List of primary_connection_string values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.primary_connection_string]
  sensitive   = true
}
output "web_pubsubs_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.public_network_access_enabled]
}
output "web_pubsubs_public_port" {
  description = "List of public_port values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.public_port]
}
output "web_pubsubs_resource_group_name" {
  description = "List of resource_group_name values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.resource_group_name]
}
output "web_pubsubs_secondary_access_key" {
  description = "List of secondary_access_key values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.secondary_access_key]
  sensitive   = true
}
output "web_pubsubs_secondary_connection_string" {
  description = "List of secondary_connection_string values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.secondary_connection_string]
  sensitive   = true
}
output "web_pubsubs_server_port" {
  description = "List of server_port values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.server_port]
}
output "web_pubsubs_sku" {
  description = "List of sku values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.sku]
}
output "web_pubsubs_tags" {
  description = "List of tags values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.tags]
}
output "web_pubsubs_tls_client_cert_enabled" {
  description = "List of tls_client_cert_enabled values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.tls_client_cert_enabled]
}
output "web_pubsubs_version" {
  description = "List of version values across all web_pubsubs"
  value       = [for k, v in azurerm_web_pubsub.web_pubsubs : v.version]
}

