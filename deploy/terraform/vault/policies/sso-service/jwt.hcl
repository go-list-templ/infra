path "secret/data/sso/jwt-keys" {
  capabilities = ["read"]
}

path "secret/metadata/sso/jwt-keys" {
  capabilities = ["list", "read"]
}