#!/usr/bin/env bash

set -e

idmod pm2 "$USER_UID" "$USER_GID" || true

if [ $# -ne 0 ]; then
    exec tini -- gosu pm2 "$@"
fi
