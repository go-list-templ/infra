init: helm-init helm-deps

release: helm-release

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