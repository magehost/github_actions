FROM python:3-stretch

LABEL "version"="0.0.4"

LABEL "name"="mh_merge_into_next_os"
LABEL "maintainer"="Jeroen Vermeulen <jeroen@magehost.pro>"
LABEL "homepage"="https://magehost.pro/"
LABEL "repository"="https://github.com/magehost/github_actions"

LABEL "com.github.actions.name"="MH Merge into Next OS"
LABEL "com.github.actions.description"="Merge into next Ubuntu version"
LABEL "com.github.actions.icon"="merge"
LABEL "com.github.actions.color"="green"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

