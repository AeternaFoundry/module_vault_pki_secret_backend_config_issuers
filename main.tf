resource "vault_pki_secret_backend_config_issuers" "pki_secret_backend_config_issuers" {
  for_each = var.pki_secret_backend_config_issuers

  backend                       = each.value.backend
  default                       = each.value.default
  default_follows_latest_issuer = each.value.default_follows_latest_issuer
  namespace                     = each.value.namespace
}

