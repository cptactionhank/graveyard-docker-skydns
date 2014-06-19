#!/bin/bash
exec skydns ${@:-"-addr 0.0.0.0:53 -machines http://${ETCD_PORT_4001_TCP_ADDR:-127.0.0.1}:${ETCD_PORT_4001_TCP_PORT:-4001}/"}