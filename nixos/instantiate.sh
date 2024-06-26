#!/usr/bin/env nix-shell
#! nix-shell -i bash --packages bash jq

set -euo pipefail

FLAKE="${1}"

nix path-info --extra-experimental-features 'nix-command flakes' --derivation "${FLAKE}.config.system.build.toplevel" | jq --raw-input '{ "path": . }'
