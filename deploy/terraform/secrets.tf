resource "vault_mount" "kvv2" {
  path        = "kvv2"
  type        = "kv-v2"
  description = "KV Version 2 secret engine"
}