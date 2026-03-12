FROM rust:alpine AS builder

ARG DOH_VERSION=0.9.15

RUN apk add --no-cache musl-dev openssl-dev pkgconfig
RUN cargo install doh-proxy --version ${DOH_VERSION} --root /usr/local

FROM alpine:latest

RUN apk add --no-cache ca-certificates libgcc
RUN adduser -D doh

USER doh

COPY --from=builder /usr/local/bin/doh-proxy /usr/local/bin/doh-proxy

EXPOSE 3000

ENTRYPOINT ["doh-proxy"]
CMD ["-u", "9.9.9.9:53", "-l", "0.0.0.0:3000"]
