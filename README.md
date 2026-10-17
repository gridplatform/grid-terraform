# grid-terraform

Terraform modules used by [Grid Platform](https://github.com/gridplatform).

When Grid generates infrastructure from JSON, it pulls the modules it needs from this bank (copy into the generated workspace). You can also use these modules from your own Terraform roots without Grid.

> Plain Terraform — no lock-in. Pin a release tag, fork for your org, or copy modules into your archive. The stack stays operable if Grid is removed.

**Docs:** [grid-docs](https://gridplatform.github.io/doc/) · **CLI:** [grid-cli](https://github.com/gridplatform/grid-cli)

## Design

- **One folder = one module** (one cloud product or a clear building block).
- Callers wire dependencies; a module should not silently create another product’s resources.
- Provider requirements live in each module’s `versions.tf`.

## Layout

```text
grid-terraform/
├── aws/
├── gcp/
├── azure/
├── oracle/ | ibm/ | alibaba/ | tencent/ | huawei/ | ovh/
├── deutsche-telekom/ | ctrls/ | yotta/ | utho/
├── rancher/ | openshift/ | redis-enterprise/ | confluent-cloud/ | mongodb/
└── versions.tf
```

## How Grid uses this bank

1. Desired-state JSON names a `type` (and often `metadata.modulePath`).
2. `grid generate` resolves that to a folder here and copies it.
3. Generated `main.tf` uses `./modules/…` so apply works from the copy alone.

```bash
export GRID_MODULE_BANK=https://github.com/gridplatform/grid-terraform.git
export GRID_MODULE_BANK_REF=v0.1.0   # prefer a release tag in production

# Or a local checkout while developing modules
export GRID_MODULE_BANK=/path/to/grid-terraform
```

## Maturity

**AWS** and **GCP** catalogs are marked supported in the CLI for the current release surface. Other provider folders include many scaffolds; treat them as work in progress unless you have verified the module yourself.

Approximate folder counts (directories under each provider): AWS ~219, GCP ~126, Azure ~133, plus regional / specialty clouds — see the tree above.

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md). One concern per folder; no credentials or customer state in PRs.

Issues: [grid-terraform/issues](https://github.com/gridplatform/grid-terraform/issues)

## Related repositories

| Repository | What it’s for |
|------------|---------------|
| [grid-cli](https://github.com/gridplatform/grid-cli) | Maps JSON → modules here |
| [grid-core](https://github.com/gridplatform/grid-core) | Runs generate + Terraform for the console |
| [grid-config](https://github.com/gridplatform/grid-config) | Example JSON that points at these modules |
| [grid-docs](https://gridplatform.github.io/doc/) | Guides |

## License

MIT — see [LICENSE](LICENSE).
