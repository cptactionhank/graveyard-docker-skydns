FROM google/golang

RUN go get -u github.com/skynetservices/skydns \
    && go install -v github.com/skynetservices/skydns

EXPOSE 53/udp

ENTRYPOINT ["skydns", "-machines", "http://${ETCD_PORT_4001_TCP_ADDR:-127.0.0.1}:${ETCD_PORT_4001_TCP_PORT:-4001}/"]
