## Required dependencies

- [helm](https://helm.sh/docs/intro/install/)
- [helmfile](https://helmfile.readthedocs.io/en/latest/#installation)
- [terraform](https://developer.hashicorp.com/terraform/install)

---

## Start

Init to install plugin and depends

```bash
make init
```

Realese to kuber
```bash
make release
```

Rollback from kuber
```bash
make rollback
```

---

# Vault

Create secret from file
```bash
vault kv put secret/sso-service/jwt private_key=@key
```