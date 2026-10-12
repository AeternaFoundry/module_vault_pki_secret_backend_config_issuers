output "pki_secret_backend_config_issuers_id" {
  description = "Map of id values across all pki_secret_backend_config_issuers, keyed the same as var.pki_secret_backend_config_issuers except keys with no id are omitted"
  value       = { for k, v in vault_pki_secret_backend_config_issuers.pki_secret_backend_config_issuers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pki_secret_backend_config_issuers_backend" {
  description = "Map of backend values across all pki_secret_backend_config_issuers, keyed the same as var.pki_secret_backend_config_issuers except keys with no backend are omitted"
  value       = { for k, v in vault_pki_secret_backend_config_issuers.pki_secret_backend_config_issuers : k => v.backend if v.backend != null && length(v.backend) > 0 }
}
output "pki_secret_backend_config_issuers_default" {
  description = "Map of default values across all pki_secret_backend_config_issuers, keyed the same as var.pki_secret_backend_config_issuers except keys with no default are omitted"
  value       = { for k, v in vault_pki_secret_backend_config_issuers.pki_secret_backend_config_issuers : k => v.default if v.default != null && length(v.default) > 0 }
}
output "pki_secret_backend_config_issuers_default_follows_latest_issuer" {
  description = "Map of default_follows_latest_issuer values across all pki_secret_backend_config_issuers, keyed the same as var.pki_secret_backend_config_issuers except keys with no default_follows_latest_issuer are omitted"
  value       = { for k, v in vault_pki_secret_backend_config_issuers.pki_secret_backend_config_issuers : k => v.default_follows_latest_issuer if v.default_follows_latest_issuer != null }
}
output "pki_secret_backend_config_issuers_namespace" {
  description = "Map of namespace values across all pki_secret_backend_config_issuers, keyed the same as var.pki_secret_backend_config_issuers except keys with no namespace are omitted"
  value       = { for k, v in vault_pki_secret_backend_config_issuers.pki_secret_backend_config_issuers : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}

