FROM hashicorp/packer:1.8.3

LABEL "com.github.actions.name" = "Packer build"
LABEL "com.github.actions.description" = "Run packer build on a template file"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="blue"

LABEL "repository" = "https://github.com/rsimiciuc/packer-build-action"
LABEL "homepage" = "https://github.com/rsimiciuc/packer-build-action"
LABEL "maintainer" = "Raul <byraul@gmail.com>"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
