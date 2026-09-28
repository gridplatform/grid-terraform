# Grid Terraform

Product module bank for [Grid](https://github.com/gridplatform/grid): standalone Terraform modules the Grid CLI copies into generated workspaces.

This repository is the source of truth for Grid module paths—not a personal module library.

## Purpose

Each folder under a cloud provider id is **one Terraform module** for **one** cloud product or service. Callers (Grid CLI or your root configuration) compose modules and wire dependencies. Modules do not create resources belonging to other products.

Provider requirements are declared in each module’s `versions.tf`. The repo root `versions.tf` lists provider pins for workspaces that compose many modules from this bank.

## Layout

```
grid-terraform/
├── aws/
├── gcp/
├── azure/
├── oracle/
├── ibm/
├── alibaba/
├── tencent/
├── huawei/
├── ovh/
├── deutsche-telekom/
├── ctrls/
├── yotta/
├── rancher/
├── openshift/
├── redis-enterprise/
├── confluent-cloud/
└── versions.tf          # root provider requirements
```

## How Grid uses the bank

1. Author a Grid JSON config (`provider` + `resources`).
2. Run `grid generate` to copy needed modules into `generated/modules/`.
3. Generated `main.tf` references `./modules/...` so apply works from the copied tree.
4. Override the bank path with `GRID_MODULE_BANK` for local forks or testing.

Default resolution from `grid-cli`: sibling `../grid-terraform`.

## Module counts

| Provider folder | Modules |
|-----------------|--------:|
| `aws` | 219 |
| `gcp` | 126 |
| `azure` | 133 |
| `oracle` | 98 |
| `ibm` | 65 |
| `alibaba` | 84 |
| `tencent` | 61 |
| `huawei` | 108 |
| `ovh` | 42 |
| `deutsche-telekom` | 48 |
| `ctrls` | 30 |
| `yotta` | 30 |
| `rancher` | 40 |
| `openshift` | 29 |

Counts are one directory per module under each provider folder.

## Observability modules

Representative monitoring and logging modules by hyperscaler:

| Cloud | Modules |
|-------|---------|
| AWS | `aws/cloudwatch` |
| GCP | `gcp/monitoring`, `gcp/monitoring-alert-policy`, `gcp/cloud-logging` |
| Azure | `azure/monitor`, `azure/log-analytics`, `azure/application-insights` |

Other providers include product-specific monitoring folders (for example `oracle/monitoring`, `ibm/monitoring`, `alibaba/cms`, `tencent/monitor`, `tencent/cls`, `huawei/ces-monitoring`, `ovh/metrics`, `deutsche-telekom/ces`).

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for module rules, formatting, and pull request expectations.

## Sync note

Ongoing Grid changes should land in the Grid org module bank (`gridplatform/grid-terraform` or your org remote), not by pointing the CLI at unrelated personal repos.
