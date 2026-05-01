resource "vault_kubernetes_auth_backend_role" "microservice" {
  backend                          = vault_auth_backend.kubernetes.path
  role_name                        = "microservice-prod"
  bound_service_account_names      = ["microservice-sa"]
  bound_service_account_namespaces = ["prod"]
  token_policies                   = ["microservice-sign"]
  token_ttl                        = 3600
}