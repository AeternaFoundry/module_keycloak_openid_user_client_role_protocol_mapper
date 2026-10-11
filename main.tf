resource "keycloak_openid_user_client_role_protocol_mapper" "openid_user_client_role_protocol_mappers" {
  for_each = var.openid_user_client_role_protocol_mappers

  claim_name                  = each.value.claim_name
  name                        = each.value.name
  realm_id                    = each.value.realm_id
  add_to_access_token         = each.value.add_to_access_token
  add_to_id_token             = each.value.add_to_id_token
  add_to_userinfo             = each.value.add_to_userinfo
  claim_value_type            = each.value.claim_value_type
  client_id                   = each.value.client_id
  client_id_for_role_mappings = each.value.client_id_for_role_mappings
  client_role_prefix          = each.value.client_role_prefix
  client_scope_id             = each.value.client_scope_id
  multivalued                 = each.value.multivalued
}

