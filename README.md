# Doc

---

## Observability

Install dependency helm

```bash
cd observability ; helm dependency update
```

```bash
helm upgrade --install observability ./observability -n monitoring --create-namespace
```

```bash
kubectl delete all --all --namespace monitoring
```
