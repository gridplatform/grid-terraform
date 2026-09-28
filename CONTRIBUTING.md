# Contributing to Grid Terraform

This repository is the **product module bank** for Grid: standalone Terraform modules, one cloud product or service per folder. The Grid CLI copies modules from here into generated workspaces.

Thank you for contributing. Keep changes focused, reviewable, and aligned with the rules below.

## Module rules

1. **One product per module** — A module under `{provider}/{service}/` owns only that service’s resources. Do not create VPC resources inside an RDS module, or call other modules from inside a module.
2. **Standalone** — Callers compose modules and pass IDs/ARNs. No nested `module` blocks that pull sibling bank modules.
3. **Provider layout** — Place modules under the matching provider folder (`aws/`, `gcp/`, `azure/`, …). Do not add a shared cross-cloud module tree.
4. **Timeless comments** — File headers explain what the module does. Avoid temporary status language in `.tf` files.
5. **Docs** — Repository documentation lives in `README.md` and this file. Do not add per-module `README.md` files unless maintainers ask for an exception.

## Repository layout

```
grid-terraform/
├── aws/ … openshift/     # provider → service modules
├── versions.tf           # root provider requirements
├── README.md
└── CONTRIBUTING.md
```

Each service folder typically contains `main.tf`, `variables.tf`, `outputs.tf`, and `versions.tf`.

## Adding or changing a module

1. Fork and branch from the default branch.
2. Add or edit files under the correct `{provider}/{service}/` path.
3. Declare `required_providers` in the module’s `versions.tf`. Align major constraints with root `versions.tf` when you introduce a new provider.
4. Prefer clear variable names, typed objects, and useful outputs (IDs, ARNs, names, endpoints).
5. Run formatting before you push:

```bash
terraform fmt -recursive
```

6. If the Grid CLI catalog must list the module, update `grid-cli`’s resource catalog (or run the catalog sync script in that repo) so `modulePath` matches this folder and a `main.tf` exists.
7. Open a pull request with a short description of the service and any consumer impact.

### Integrity checks (Grid CLI companion)

From the sibling `grid-cli` repo (when available):

```bash
node scripts/verify-catalog-bank.js
```

Every catalog `modulePath` must resolve to a `main.tf` in this bank.

## Pull requests

- One concern per PR when possible (single service or a tight set of related modules).
- Include `terraform fmt -recursive` (check should pass).
- Note breaking variable/output renames in the PR body.
- At least one maintainer review before merge.

## Commit messages

Use short, imperative subjects:

```
feat(aws): add route53 health check module
fix(azure): correct private dns vnet link registration
docs: clarify module composition rules
chore: bump root aws provider lower bound
```

## Issues and discussion

- **Bugs** — Steps to reproduce, provider version, relevant plan/apply errors (redact secrets).
- **New services** — Name the cloud product, intended Terraform resources, and whether Grid CLI should expose a catalog type.

## Questions

Prefer GitHub Issues or Discussions on this repository’s remote. For Grid platform product questions, use the Grid org docs and community channels listed in the main Grid project.

Thank you for helping keep the bank clean and usable in public.
