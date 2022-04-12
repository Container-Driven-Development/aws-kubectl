# BUILDER
FROM bitnami/kubectl:1.22.8-debian-10-r23 as FETCHER

# IMAGE
FROM amazon/aws-cli:2.5.4

LABEL org.opencontainers.image.source https://github.com/Container-Driven-Development/aws-kubectl

ENTRYPOINT ["/usr/local/sbin/kubectl"]

COPY --from=FETCHER /opt/bitnami/kubectl/bin/kubectl /usr/local/sbin/kubectl
