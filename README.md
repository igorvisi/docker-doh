# doh-proxy Docker Image

[![Docker Pulls](https://img.shields.io/docker/pulls/igorvisi/docker-doh)](https://hub.docker.com/r/igorvisi/docker-doh)
[![GitHub Actions](https://github.com/igorvisi/docker-doh/workflows/CI/badge.svg)](https://github.com/igorvisi/docker-doh/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A Docker image for [doh-server](https://github.com/DNSCrypt/doh-server) - A fast and secure DoH (DNS-over-HTTPS) server written in Rust.

## Quick Start

```bash
docker run -d -p 3000:3000 igorvisi/docker-doh:latest
