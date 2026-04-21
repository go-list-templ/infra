# Doc

Install:
- [helm](https://helm.sh/docs/intro/install/)
- [helmfile](https://helmfile.readthedocs.io/en/latest/#installation) + [helm-diff](https://github.com/databus23/helm-diff)

---

## Observability

Install dependencies

```bash
helmfile deps
```

Release to kuber

```bash
helmfile apply
```

Delete all release from kuber

```bash
helmfile destroy --skip-charts
```

Delete all from namespace 

```bash
kubectl delete all --all --namespace telemetry
```

---

## Vault

Enable Key-value store

```bash
vault secrets enable -path=secret kv-v2
```

Create secret
```bash
vault kv put secret/sso-service/jwt private_key=@key
```

Add policy
```bash
vault policy write sso-policy - <<EOF
path "secret/data/sso-service/*" {
  capabilities = ["read"]
}
EOF
```

Enable auth in kuber
```bash
vault auth enable kubernetes
```

Enable auth config
```bash
vault write auth/kubernetes/config \
    kubernetes_host="https://kubernetes.default.svc" \
    disable_iss_validation=true
```

Create role for sso-service
```bash
vault write auth/kubernetes/role/sso-service-role \ 
  bound_service_account_names=sso-service \
  bound_service_account_namespaces=sso-service \ 
  policies=sso-policy \
  ttl=24h
```