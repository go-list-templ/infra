resource "time_rotating" "jwt_rotation" {
  rotation_days = 30
}

resource "tls_private_key" "jwt" {
  algorithm = "RSA"
  rsa_bits  = 4096
}