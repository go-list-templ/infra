import {
  to = vault_auth_backend.kubernetes
  id = "kubernetes"
}

resource "vault_auth_backend" "kubernetes" {
  type = "kubernetes"
}

resource "vault_kubernetes_auth_backend_config" "config"   {
  backend                = vault_auth_backend.kubernetes.path
  kubernetes_host        = "https://kubernetes.default.svc"
  disable_iss_validation = true
}

import {
  to = vault_mount.kvv2-secret
  id = "secret"
}

resource "vault_mount" "kvv2-secret" {
  path        = "secret"
  type        = "kv"
  options     = { version = "2" }
  description = "KV Version 2 secret engine mount"
}
