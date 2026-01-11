variable "web_pubsubs" {
  description = <<EOT
Map of web_pubsubs, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku
Optional:
    - aad_auth_enabled
    - capacity
    - local_auth_enabled
    - public_network_access_enabled
    - tags
    - tls_client_cert_enabled
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - live_trace (block):
        - connectivity_logs_enabled (optional)
        - enabled (optional)
        - http_request_logs_enabled (optional)
        - messaging_logs_enabled (optional)
EOT

  type = map(object({
    location                      = string
    name                          = string
    resource_group_name           = string
    sku                           = string
    aad_auth_enabled              = optional(bool, true)
    capacity                      = optional(number, 1)
    local_auth_enabled            = optional(bool, true)
    public_network_access_enabled = optional(bool, true)
    tags                          = optional(map(string))
    tls_client_cert_enabled       = optional(bool, false)
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    live_trace = optional(object({
      connectivity_logs_enabled = optional(bool, true)
      enabled                   = optional(bool, true)
      http_request_logs_enabled = optional(bool, true)
      messaging_logs_enabled    = optional(bool, true)
    }))
  }))
}

