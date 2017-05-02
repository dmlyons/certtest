FROM dmlyons/golang-arm:latest

RUN mkdir -p $GOPATH/src/app/certtest

RUN go get -u golang.org/x/crypto/acme/autocert

RUN go get -u github.com/NYTimes/gziphandler

COPY main.go $GOPATH/src/app/certtest/main.go

RUN go install app/certtest

EXPOSE 443

CMD /go/bin/certtest
