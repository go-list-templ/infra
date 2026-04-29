deploy-dev:
	kustomize build deploy/k8s/dev --load-restrictor LoadRestrictionsNone --enable-alpha-plugins --enable-exec --enable-helm | kubectl apply -f -