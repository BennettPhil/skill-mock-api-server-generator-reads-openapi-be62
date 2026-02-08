---
name: mock-api-server-generator-reads-openapi-be62
description: A mock API server generator that reads an OpenAPI spec and spins up a local server returning realistic fake...
version: 0.1.0
license: Apache-2.0
---

# mock-api-server-generator-reads-openapi-be62

## Purpose

Use this skill to implement and operate: A mock API server generator that reads an OpenAPI spec and spins up a local server returning realistic fake responses. Support response delays, error simulation, and stateful behavior..

## Instructions

1. Run `./scripts/run.sh --help` to inspect supported inputs.
2. Run `./scripts/run.sh "<target>"` to generate an execution plan and recommended checks.
3. Review the emitted checklist and adapt it for your repository or environment.

## Inputs

- A target name or path as the main argument.
- Optional `--context` text to provide extra constraints.

## Outputs

- A structured checklist printed to stdout.
- Exit code `0` on success and non-zero on invalid usage.

## Constraints

- This starter implementation is intentionally minimal.
- Tailor the generated checklist before using it in production workflows.
