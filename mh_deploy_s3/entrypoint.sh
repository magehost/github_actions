#!/bin/bash
#
# Needs env vars:  GITHUB_REF  GITHUB_TOKEN  AWS_ACCESS_KEY_ID  AWS_SECRET_ACCESS_KEY
#

set  -o xtrace  -o errexit  -o nounset  -o pipefail

BRANCH="$( echo "${GITHUB_REF}" | cut -d'/' -f3 )"

for GET_FILE in "$@"; do
    mkdir -p  "$( dirname "${GET_FILE}" )"
    wget --header "Authorization: token ${GITHUB_TOKEN}" \
         --header 'Accept: application/vnd.github.v3.raw' \
         --output-document="${GET_FILE}" \
         "https://api.github.com/repos/magehost/mhservers/contents/${GET_FILE}?ref=${BRANCH}"
done

RESULTFILE=$( bash  mh-deploy/package.sh  usr/share/mh-install )

aws  s3  cp  \
    --acl public-read  \
    --content-disposition 'attachment; filename="mh-deploy.sh"' \
    "${RESULTFILE}"  s3://mh-deploy.magehost.pro/mh-deploy.sh