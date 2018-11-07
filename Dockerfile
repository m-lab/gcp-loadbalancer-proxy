FROM golang:1.11 as build
ADD . /go/src/github.com/stephen-soltesz/gcp-loadbalancer-proxy
RUN CGO_ENABLED=0 go get -v github.com/stephen-soltesz/gcp-loadbalancer-proxy

# Now copy the built image into the minimal base image
FROM alpine
COPY --from=build /go/bin/gcp-loadbalancer-proxy /
WORKDIR /
ENTRYPOINT ["/gcp-loadbalancer-proxy"]
