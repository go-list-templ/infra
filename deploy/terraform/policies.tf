resource "vault_policy" "microservice_sign" {
  name   = "microservice-sign"
  policy = file("${path.module}/policies/microservice-sign.hcl")
}