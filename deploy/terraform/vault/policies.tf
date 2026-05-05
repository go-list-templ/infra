resource "vault_policy" "sso-service-jwt" {
  name   = "sso-service-sign"
  policy = file("${path.module}/policies/sso-service/jwt.hcl")
}