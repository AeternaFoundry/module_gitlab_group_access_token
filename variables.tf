variable "group_access_tokens" {
  description = <<EOT
Map of group_access_tokens, attributes below
Required:
    - group
    - name
    - scopes
Optional:
    - access_level
    - description
    - expires_at
    - rotation_configuration
    - validate_past_expiration_date
EOT

  type = map(object({
    group        = string
    name         = string
    scopes       = set(string)
    access_level = optional(string)
    description  = optional(string)
    expires_at   = optional(string)
    rotation_configuration = optional(object({
      expiration_days    = number
      rotate_before_days = number
    }))
    validate_past_expiration_date = optional(bool)
  }))
}

