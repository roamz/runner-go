FROM golang:1

RUN apt-get update && apt-get install -y python3-pip zip
RUN pip3 install awscli --upgrade
RUN go get github.com/golang/mock/gomock gopkg.in/mikefarah/yq.v2
RUN curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b $(go env GOPATH)/bin v1.16.0
RUN git config --global url.ssh://git@gitlab.com/localmeasure.insteadOf https://gitlab.com/localmeasure
RUN git config --global url.ssh://git@github.com/roamz.insteadOf https://github.com/roamz
