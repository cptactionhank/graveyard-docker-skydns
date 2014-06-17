FROM google/golang

RUN go get -u github.com/skynetservices/skydns \
    && go install github.com/coreos/etcd

ENTRYPOINT ["skydns"]
