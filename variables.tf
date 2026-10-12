variable "pki_secret_backend_config_issuers" {
  description = <<EOT
Map of pki_secret_backend_config_issuers, attributes below
Required:
    - backend
Optional:
    - default
    - default_follows_latest_issuer
    - namespace
EOT

  type = map(object({
    backend                       = string
    default                       = optional(string)
    default_follows_latest_issuer = optional(bool)
    namespace                     = optional(string)
  }))
}

