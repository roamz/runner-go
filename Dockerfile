FROM golang:1

RUN apt-get update
RUN apt-get install -y python3-pip zip
RUN pip3 install awscli --upgrade
RUN go get -u golang.org/x/lint/golint
RUN go get github.com/golang/mock/gomock
RUN git config --global url.ssh://git@gitlab.com/localmeasure.insteadOf https://gitlab.com/localmeasure
RUN git config --global url.ssh://git@github.com/roamz.insteadOf https://github.com/roamz

ENV GOROOT=/usr/local/go
