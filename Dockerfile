FROM golang:1.13.0-stretch

RUN apt-get update && apt-get install -y zip
RUN curl -sfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh| sh -s -- -b $(go env GOPATH)/bin v1.18.0
RUN git config --global url.ssh://git@gitlab.com/localmeasure.insteadOf https://gitlab.com/localmeasure
RUN git config --global url.ssh://git@github.com/roamz.insteadOf https://github.com/roamz
