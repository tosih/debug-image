FROM alpine:3.11

RUN apk add -U --no-cache \
    bash            \
    bind-tools      \
    curl            \
    git             \
    iproute2        \
    iputils         \
    make            \
    musl-dev        \
    nmap            \
    postgresql-client \
    py3-virtualenv  \
    python3         \
    tar             \
    tshark          \
    vim             \
    wget            \
    zsh             \
    && apk --no-cache upgrade

# https://storage.googleapis.com/kubernetes-release/release/stable.txt
ENV KUBECTL_VERSION v1.17.2

RUN curl -L -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl \
    && chmod +x /usr/bin/kubectl
