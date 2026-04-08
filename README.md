# Doc

Install:
- [helm](https://helm.sh/docs/intro/install/)
- [helmfile](https://helmfile.readthedocs.io/en/latest/#installation) + [helm-diff](https://github.com/databus23/helm-diff)

---

## Observability

Install dependency helm and deploy (release) to kuber

```bash
helmfile apply
```

Delete all release from kuber

```bash
helmfile destroy --skip-charts
```

Delete all from namespace 

```bash
kubectl delete all --all --namespace monitoring
```