FROM envoyproxy/envoy:v1.13.1

ARG GRPC_SERVER
COPY ./envoy.yaml /etc/envoy/envoy.yaml
RUN sed -i "s/GRPC_SERVER/${GRPC_SERVER}/g" /etc/envoy/envoy.yaml
EXPOSE 8080
CMD /usr/local/bin/envoy -c /etc/envoy/envoy.yaml
