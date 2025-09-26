FROM alpine:3

FROM jqlang/jq:1.8.0 AS jq
COPY --from=jq /usr/local/bin/jq /usr/local/bin/jq

FROM registry.k8s.io/kubectl:v1.34.0 AS kubectl
COPY --from=kubectl /usr/local/bin/kubectl /usr/local/bin/kubectl
