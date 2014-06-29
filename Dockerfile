FROM google/golang

RUN go get -u github.com/skynetservices/skydns \
    && go install -v github.com/skynetservices/skydns

EXPOSE 53/udp
ADD script.sh /start

ENTRYPOINT ["start"]
