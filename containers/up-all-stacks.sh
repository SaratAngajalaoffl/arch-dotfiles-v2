#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for compose_file in "$ROOT_DIR"/*/docker-compose.yml; do
  [ -e "$compose_file" ] || continue
  stack_dir="$(dirname "$compose_file")"
  stack_name="$(basename "$stack_dir")"
  echo "==> Bringing up stack: $stack_name"
  docker compose -f "$compose_file" up -d
done

echo "All stacks have been started (where compose files exist)."

