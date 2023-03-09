.PHONY: clean
clean: clean-terragrunt-caches clean-terraform-caches

.PHONY: clean-terragrunt-caches
clean-terragrunt-caches:
	find services/ -type d -name '.terragrunt-cache' | xargs rm -rf

.PHONY: clean-terraform-caches
clean-terraform-caches:
	find services/ -type d -name '.terraform' | xargs rm -rf
