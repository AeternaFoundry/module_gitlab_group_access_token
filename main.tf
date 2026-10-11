resource "gitlab_group_access_token" "group_access_tokens" {
  for_each = var.group_access_tokens

  group                         = each.value.group
  name                          = each.value.name
  scopes                        = each.value.scopes
  access_level                  = each.value.access_level
  description                   = each.value.description
  expires_at                    = each.value.expires_at
  rotation_configuration        = each.value.rotation_configuration
  validate_past_expiration_date = each.value.validate_past_expiration_date
}

