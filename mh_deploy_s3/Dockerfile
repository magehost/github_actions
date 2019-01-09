FROM python:3-stretch

LABEL "name"="sh"
LABEL "maintainer"="Jeroen Vermeulen <jeroen@magehost.pro>"
LABEL "version"="1.0.7"

LABEL "com.github.actions.name"="MH Deploy S3"
LABEL "com.github.actions.description"="Package MH Deploy + Upload to S3"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="gray-dark"

COPY entrypoint.sh /entrypoint.sh

#RUN apt-get update && \
#  apt-get install -y --no-install-recommends curl groff jq && \
#  pip install setuptools awscli

RUN apt-get update && \
  pip install awscli

ENTRYPOINT ["/entrypoint.sh"]

