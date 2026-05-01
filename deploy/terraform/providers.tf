provider "vault" {
  address = "http://vault.localhost"

  auth_login {
    path = "auth/kubernetes/login"
    parameters = {
      role = "terraform-admin"
    }
  }
}