resource "vault_policy" "sso-service-keys" {
  name   = "sso-service-keys"
  policy = file("${path.module}/policies/sso-service/keys.hcl")
}