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
    aad_auth_enabled              = optional(bool)
    capacity                      = optional(number)
    local_auth_enabled            = optional(bool)
    public_network_access_enabled = optional(bool)
    tags                          = optional(map(string))
    tls_client_cert_enabled       = optional(bool)
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    live_trace = optional(object({
      connectivity_logs_enabled = optional(bool)
      enabled                   = optional(bool)
      http_request_logs_enabled = optional(bool)
      messaging_logs_enabled    = optional(bool)
    }))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_web_pubsub's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.WebPubSubName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: sku
  #   condition: contains(["Premium_P1", "Premium_P2", "Standard_S1", "Free_F1"], value)
  #   message:   must be one of: Premium_P1, Premium_P2, Standard_S1, Free_F1
  # path: capacity
  #   source:    validation.IntInSlice(...) - no translation rule yet, add one
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

