# damon/google-auth-proxy

FROM damon/base

RUN DEBIAN_FRONTEND=noninteractive apt-get install -qqy golang
ENV GOPATH /go
RUN mkdir -p $GOPATH
RUN go get github.com/bitly/google_auth_proxy

ADD run /scripts/run
RUN chmod +x /scripts/run

EXPOSE 4180

ENTRYPOINT ["/scripts/run"]
