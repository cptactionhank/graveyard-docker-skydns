FROM google/golang

RUN go get -u github.com/skynetservices/skydns \
    && go install -v github.com/skynetservices/skydns

EXPOSE 53/udp

ENTRYPOINT ["skydns", "-addr", "0.0.0.0:53"]

CMD ["-nameservers", "8.8.8.8:53,8.8.4.4:53"]
