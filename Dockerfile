# damon/google-auth-proxy

FROM damon/base

RUN DEBIAN_FRONTEND=noninteractive apt-get install -qqy golang
ENV GOPATH /go
RUN mkdir -p $GOPATH
RUN go get github.com/bitly/google_auth_proxy

EXPOSE 4180

ENTRYPOINT ["/go/bin/google_auth_proxy"]
