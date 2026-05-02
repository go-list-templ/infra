resource "vault_policy" "sso-service-sign" {
  name   = "sso-service-sign"
  policy = file("${path.module}/policies/sso-service/sign.hcl")
}