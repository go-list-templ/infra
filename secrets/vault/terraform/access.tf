resource "vault_policy" "sso-policy" {
  name   = "sso-policy"
  policy = <<EOT
path "secret/data/sso-service/*" {
  capabilities = ["read"]
}
EOT
}

resource "vault_kubernetes_auth_backend_role" "sso-service-role" {
  backend   = vault_auth_backend.kubernetes.path
  role_name = "sso-service-role"
  bound_service_account_names = ["sso-service-sa"]
  bound_service_account_namespaces = ["sso-service"]
  token_policies = [vault_policy.sso-policy.name]
}