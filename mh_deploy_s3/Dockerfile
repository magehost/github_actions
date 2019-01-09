FROM python:3-stretch

# LABEL "version"="1.1.0"

LABEL "name"="mh_deploy_to_s3"
LABEL "maintainer"="Jeroen Vermeulen <jeroen@magehost.pro>"
LABEL "homepage"="https://magehost.pro/"
LABEL "repository"="https://github.com/magehost/github_actions"

LABEL "com.github.actions.name"="MH Deploy S3"
LABEL "com.github.actions.description"="Package MH Deploy + Upload to S3"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="green"

COPY entrypoint.sh /entrypoint.sh

#RUN apt-get update && \
#  apt-get install -y --no-install-recommends curl groff jq && \
#  pip install setuptools awscli

RUN apt-get update && \
  pip install awscli

ENTRYPOINT ["/entrypoint.sh"]

