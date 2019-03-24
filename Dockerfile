FROM golang:1

RUN go get -u golang.org/x/lint/golint & go get github.com/golang/mock/gomock
RUN git config --global url.ssh://git@gitlab.com/localmeasure.insteadOf https://gitlab.com/localmeasure

