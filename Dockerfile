FROM dmlyons/golang-arm:latest

RUN mkdir -p $GOPATH/src/app/certtest

COPY . $GOPATH/src/app/certtest/

RUN go install app/certtest

EXPOSE 443

CMD /go/bin/certtest
