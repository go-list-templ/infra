deploy-dev:
	kustomize build deploy/dev --load-restrictor LoadRestrictionsNone --enable-alpha-plugins --enable-exec --enable-helm