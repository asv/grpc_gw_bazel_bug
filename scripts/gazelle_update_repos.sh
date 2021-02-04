#! /usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

readonly TOPLEVEL="$(git rev-parse --show-toplevel)"
cd "${TOPLEVEL}"

bazelisk run //:gazelle -- update-repos -from_file=go.mod -prune
bazelisk run //:gazelle

exit 0
