# Doc

Install:
- [helm](https://helm.sh/docs/intro/install/)
- [helmfile](https://helmfile.readthedocs.io/en/latest/#installation) + [helm-diff](https://github.com/databus23/helm-diff)

---

## Observability

Install dependency helm

```bash
helmfile apply
```

```bash
kubectl delete all --all --namespace monitoring
```