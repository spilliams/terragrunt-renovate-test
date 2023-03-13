# Terragrunt Renovate Test

Created as a minimal reproduction case for https://github.com/renovatebot/renovate/issues/13393 (tracked internally by https://opensesame.atlassian.net/browse/DEVO-1681)

## Minimal Reproduction

The current behavior that this repository seeks to show is that Renovate normally does not update a terraform lockfile if it is in a directory with no `.tf` files. This can be the case when the configuration is managed by Terragrunt, where the `terragrunt.hcl` includes a `terraform` block to call out to an external module.

The expected behavior is that when Renovate runs on a minimal Terragrunt configuration, it will update the versions and hashes stored in the `.terraform.lock.hcl`. This is a listing of what a minimal Terragrunt configuration contains:

```text
my-service
├── .terraform.lock.hcl
├── .terragrunt-cache/
└── terragrunt.hcl
```

and the minimal `terragrunt.hcl` is:

```hcl
terraform {
  source = "path/to/module"
}
```
