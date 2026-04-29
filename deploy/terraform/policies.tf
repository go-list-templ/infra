resource "vault_policy" "terraform_admin" {
  name   = "terraform-admin"
  policy = file("${path.module}/policies/terraform-admin.hcl")
}

resource "vault_policy" "microservice_sign" {
  name   = "microservice-sign"
  policy = file("${path.module}/policies/microservice-sign.hcl")
}