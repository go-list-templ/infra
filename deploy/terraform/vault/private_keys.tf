resource "time_rotating" "sso-service-key-rotation" {
  rotation_days = 30
}

resource "tls_private_key" "sso-service-key" {
  algorithm = "RSA"
  rsa_bits  = 4096

  lifecycle {
    replace_triggered_by = [time_rotating.sso-service-key-rotation]
  }
}