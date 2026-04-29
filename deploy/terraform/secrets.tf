resource "vault_mount" "kvv2" {
  path        = "kvv2"
  type        = "kv-v2"
  description = "KV Version 2 secret engine"
}

//todo delete after tests
resource "vault_kv_secret_v2" "app_config" {
  mount = vault_mount.kvv2.path
  name  = "prod/app/config"

  data_json = jsonencode({
    DB_HOST     = "db.internal"
    API_KEY     = "very-secret-key-12345"
    DEBUG_MODE  = "false"
  })

  delete_all_versions = false
}