resource "vault_auth_backend" "kubernetes" {
  type = "kubernetes"
  path = "kubernetes"
}

resource "vault_kubernetes_auth_backend_config" "config" {
  backend                = vault_auth_backend.kubernetes.path
  kubernetes_host        = "https://kubernetes.default.svc.cluster.local:443"
  issuer                 = "https://kubernetes.default.svc.cluster.local"
  disable_iss_validation = true
}

resource "vault_kubernetes_auth_backend_role" "microservice" {
  backend                          = vault_auth_backend.kubernetes.path
  role_name                        = "microservice-prod"
  bound_service_account_names      = ["microservice-sa"]
  bound_service_account_namespaces = ["prod"]
  token_policies                   = ["microservice-sign"]
  token_ttl                        = 3600
}