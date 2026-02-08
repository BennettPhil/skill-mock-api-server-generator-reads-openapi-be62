#!/usr/bin/env bash
set -euo pipefail

show_help() {
  cat <<'EOF'
Usage: ./scripts/run.sh <target> [--context <text>]

Generates a concise implementation checklist for this skill idea.
EOF
}

if [[ "${1:-}" == "--help" ]]; then
  show_help
  exit 0
fi

if [[ $# -lt 1 ]]; then
  echo "error: missing required <target>" >&2
  show_help >&2
  exit 1
fi

target="$1"
shift
extra_context=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --context)
      extra_context="${2:-}"
      shift 2
      ;;
    *)
      echo "error: unknown argument: $1" >&2
      exit 1
      ;;
  esac
done

echo "Skill: mock-api-server-generator-reads-openapi-be62"
echo "Idea: A mock API server generator that reads an OpenAPI spec and spins up a local server returning realistic fake responses. Support response delays, error simulation, and stateful be..."
echo "Target: $target"
if [[ -n "$extra_context" ]]; then
  echo "Context: $extra_context"
elif [[ -n "" ]]; then
  echo "Context: "
fi
echo ""
echo "Checklist:"
echo "1. Confirm expected inputs and outputs for '$target'."
echo "2. Implement the smallest working flow first."
echo "3. Validate edge cases and failure paths."
echo "4. Capture usage examples for future agents."
