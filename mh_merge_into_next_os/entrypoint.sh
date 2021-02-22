#!/bin/bash
IFS=$'\n'
set  -o xtrace  -o errexit  -o nounset  -o pipefail  +o history

#
# Needs env vars:  GITHUB_REF  GITHUB_TOKEN  NEXT_BRANCH
#
# When you change this file, don't forget to increase the "version" label in the Dockerfile
#
# This script is called from  /srv/magehost/.github/workflows/push.yml

BRANCH="$( echo "${GITHUB_REF}" | cut -d'/' -f3 )"
git  status
git  fetch
git  checkout  -b "$NEXT_BRANCH"  "origin/$NEXT_BRANCH"
git  merge "$BRANCH"
git  status

