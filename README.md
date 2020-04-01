# grpc-web-proxy

[![Actions Status](https://github.com/lieferemma/grpc-web-proxy/workflows/CI/badge.svg)](https://github.com/lieferemma/grpc-web-proxy/actions?query=workflow%3A"CI")

This proxy acts as middleware between Lieferemma [Frontend](https://github.com/lieferemma/frontend) and Lieferemma [Backend](https://github.com/lieferemma/backend). It is required to translate traffic from GRPC-web 

## Getting started

Build and run with docker: 

```
docker build --no-cache -t grpc-web-proxy:latest . && docker run -d -p 8080:8080 -p 9901:9901 grpc-web-proxy:latest:latest
```

**NOTE**

The envoy.yaml is configured for the Lieferemma [Backend](https://github.com/lieferemma/backend), so if cou plan to run this by your own, check the last line in the envoy.yaml and change the host accordingly: 
```
hosts: [{ socket_address: { address: host.docker.internal, port_value: 50051 }}]
```