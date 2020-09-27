#!/usr/bin/env bash
set -euo pipefail
## Not restart promnesia-restarter immediatally
sleep 5
systemctl --user restart promnesia.servicec
