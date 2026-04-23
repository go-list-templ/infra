resource "vault_policy" "sso-policy" {
  name   = "sso-policy"
  policy = <<EOT
path "secret/data/sso-service/*" {
  capabilities = ["read"]
}
EOT
}