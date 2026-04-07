# Doc

---

## Observability

Install dependency helm

```bash
helm dependency update ./observability
```

```bash
helm upgrade --install observability ./observability -n monitoring --create-namespace
```

```bash
kubectl delete all --all --namespace monitoring
```