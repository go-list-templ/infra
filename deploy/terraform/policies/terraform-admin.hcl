path "sys/policies/acl/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "auth/kubernetes/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "transit/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "kvv2/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "sys/mounts/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "sys/health" {
  capabilities = ["read"]
}

path "sys/seal-status" {
  capabilities = ["read"]
}

path "sys/auth/*" {
  capabilities = ["read", "list"]
}

# path "pki/*" {
#   capabilities = ["create", "read", "update", "delete", "list"]
# }

# path "database/*" {
#   capabilities = ["create", "read", "update", "delete", "list"]
# }