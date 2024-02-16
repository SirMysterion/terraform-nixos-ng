#!/usr/bin/env nix-shell
#! nix-shell -i bash --packages bash jq

set -euo pipefail

FLAKE="${1}"

nix path-info --json --extra-experimental-features 'nix-command flakes' --derivation "${FLAKE}.config.system.build.toplevel" | jq '{ "path": (to_entries | .[0].key) }'
