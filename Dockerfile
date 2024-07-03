FROM amazon/aws-cli:2.17.7

LABEL "com.github.actions.name"="S3 Sync"
LABEL "com.github.actions.description"="Sync a directory to an AWS S3 repository"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL org.opencontainers.image.version="0.6.0"
LABEL org.opencontainers.image.source="https://github.com/henriquemattos/s3-sync-action"
LABEL org.opencontainers.image.url="https://www.linkedin.com/in/henriquemattos"
LABEL org.opencontainers.image.authors="Jake Jarvis <jake@jarv.is>, Henrique Mattos <hey@henriquemattos.eu>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='2.17.7'

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
