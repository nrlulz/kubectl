FROM alpine:3
COPY --from=ghcr.io/jqlang/jq:1.8.1 /jq /usr/local/bin/jq
COPY --from=registry.k8s.io/kubectl:v1.34.2 /bin/kubectl /usr/local/bin/kubectl
