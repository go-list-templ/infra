deploy-dev: deploy-k8s deploy-terraform

deploy-k8s:
	kustomize build deploy/k8s/dev --load-restrictor LoadRestrictionsNone --enable-alpha-plugins --enable-exec --enable-helm | kubectl --server-side --force-conflicts apply -f -

deploy-terraform:
	terraform -chdir=deploy/terraform init
	terraform -chdir=deploy/terraform apply -auto-approve