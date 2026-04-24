init: helm-init helm-deps

release: helm-release terraform-release

deps: helm-deps

rollback: helm-rollback

###

helm-init:
	helmfile init

helm-deps:
	helmfile deps

helm-release:
	helmfile apply

helm-rollback:
	helmfile destroy --skip-charts

###

terraform-release: terraform-vault

terraform-vault:
	terraform -chdir=terraform/vault init
	terraform -chdir=terraform/vault apply -auto-approve