#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
root_dir="$(cd "${script_dir}/.." && pwd)"
readme="${root_dir}/README.md"
index="${root_dir}/index.md"

if [[ ! -f "$readme" ]]; then
  echo "Missing ${readme}." >&2
  exit 1
fi

{
  printf '%s\n' "---"
  printf '%s\n' "layout: default"
  printf '%s\n' "title: Isaac DeFrain's Projects"
  printf '%s\n' "---"
  printf '\n'
  cat "$readme"
} > "${index}.tmp"

mv "${index}.tmp" "$index"
echo "Synced ${index} from ${readme}" >&2
