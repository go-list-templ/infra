provider "vault" {
  address = "http://vault.secrets.svc.cluster.local:8200"

  auth_login {
    path = "auth/kubernetes/login"
    parameters = {
      role = "terraform-admin"
    }
  }
}