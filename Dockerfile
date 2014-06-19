FROM google/golang

RUN go get -u github.com/skynetservices/skydns \
    && go install -v github.com/skynetservices/skydns

ADD start.sh /start

EXPOSE 53/udp

ENTRYPOINT ["/start"]

