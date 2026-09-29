# grid-terraform

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Part of Grid Platform](https://img.shields.io/badge/Grid%20Platform-open%20source-0A7EA4)](https://github.com/gridplatform)

**Terraform module bank for [Grid Platform](https://github.com/gridplatform)** — the open-source infrastructure orchestration stack.

This repository is the public source of truth for Grid’s cloud modules. The [Grid CLI](https://github.com/gridplatform/grid-cli) copies the modules your config needs into a generated workspace (`archive/…/modules/` under [grid-config](https://github.com/gridplatform/grid-config), or any `grid generate` output). You can also compose these modules from your own root Terraform without Grid.

> **Open modules, no lock-in.** Every path here is plain Terraform. Fork it, pin it, or vendor copies into your desired-state `archive/` — the stack stays operable if Grid is removed.

## Part of Grid

| Component | Role |
|-----------|------|
| **[grid-terraform](https://github.com/gridplatform/grid-terraform)** (this repo) | Reusable modules per cloud / product |
| **[grid-config](https://github.com/gridplatform/grid-config)** | Desired-state JSON + generated `archive/` |
| **[grid-cli](https://github.com/gridplatform/grid-cli)** | Maps Grid JSON → modules here → Terraform |
| **[grid-core](https://github.com/gridplatform/grid-core)** | API that runs generate / plan / apply |
| **[grid-ui](https://github.com/gridplatform/grid-ui)** | Console |

Website: [gridplatform.org](https://gridplatform.org) · Docs: [grid-docs](https://github.com/gridplatform/grid-docs) · Community: [Discord](https://discord.gg/gridplatform)

## Design rules

- **One folder = one module = one cloud product** (or a clearly scoped building block).
- Callers compose modules and wire dependencies; a module should not silently create resources that belong to another product.
- Provider requirements live in each module’s `versions.tf`. The repo-root `versions.tf` pins providers for workspaces that compose many modules from this bank.

## Layout

```text
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
└── versions.tf
```

## How Grid uses this bank

1. Author Grid JSON (`provider` + `resources`) in **grid-config** (or any config root).
2. Run `grid generate` — CLI resolves `type` → `modulePath` and **copies** modules from this bank.
3. Generated `main.tf` references `./modules/…` so apply works from the copied tree alone.
4. Override the bank with `GRID_MODULE_BANK` — a **git URL** (cloned to cache) or a local path.

```bash
# Remote (default for Grid Core)
export GRID_MODULE_BANK=https://github.com/gridplatform/grid-terraform.git
export GRID_MODULE_BANK_REF=main

# Or a local checkout while developing modules
export GRID_MODULE_BANK=/path/to/grid-terraform
```

## Module coverage (approximate)

| Provider folder | Modules |
|----------------|--------:|
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

Counts = directories under each provider folder. Many modules are scaffolds (`coming_soon` / `planned` in the CLI catalog); hyperscaler AWS/GCP paths are the most mature for real apply today.

### Observability (examples)

| Cloud | Modules |
|-------|---------|
| AWS | `aws/cloudwatch` |
| GCP | `gcp/monitoring`, `gcp/cloud-logging`, … |
| Azure | `azure/monitor`, `azure/log-analytics`, … |

## Contributing

Community modules and fixes make Grid better for everyone. See [CONTRIBUTING.md](./CONTRIBUTING.md) for structure, formatting, and PR expectations.

High level:

1. One concern per module folder
2. Declare providers in `versions.tf`; expose inputs in `variables.tf`
3. Prefer idempotent, composable interfaces over opinionated “god” modules
4. Do not commit credentials or customer-specific state

Issues: [github.com/gridplatform/grid-terraform/issues](https://github.com/gridplatform/grid-terraform/issues)

## License

MIT — see [LICENSE](LICENSE). Part of the [Grid Platform](https://github.com/gridplatform) open-source project.

**Built with ❤️ for the community**
