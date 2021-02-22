#!/bin/bash
IFS=$'\n'
set  -o xtrace  -o errexit  -o nounset  -o pipefail  +o history

#
# Needs env vars:  GITHUB_REF  GITHUB_TOKEN  NEXT_BRANCH
#
# When you change this file, don't forget to increase the "version" label in the Dockerfile
#
# This script is called from  /srv/magehost/.github/workflows/push.yml

set  -o xtrace  -o errexit  -o nounset  -o pipefail

BRANCH="$( echo "${GITHUB_REF}" | cut -d'/' -f3 )"

if [ "bionic" == "$BRANCH" ]; then
    # git clone -b focal https://${GITHUB_TOKEN}@github.com/magehost/mhservers.git
    # git status
    git status
    git checkout "origin/$NEXT_BRANCH" -b "$NEXT_BRANCH"
    git merge bionic && date
    git status
fi

