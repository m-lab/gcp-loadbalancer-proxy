[![Go Report Card](https://goreportcard.com/badge/github.com/m-lab/gcp-loadbalancer-proxy)](https://goreportcard.com/report/github.com/m-lab/gcp-loadbalancer-proxy) [![Build Status](https://travis-ci.org/m-lab/gcp-loadbalancer-proxy.svg?branch=master)](https://travis-ci.org/m-lab/gcp-loadbalancer-proxy) [![Coverage Status](https://coveralls.io/repos/github/m-lab/gcp-loadbalancer-proxy/badge.svg?branch=master)](https://coveralls.io/github/m-lab/gcp-loadbalancer-proxy?branch=master)

# gcp-loadbalancer-proxy

gcp-loadbalancer-proxy provides an HTTP-to-insecure-HTTPS proxy.

For example, this can be helpful when deploying GCP LoadBalancer health
checks, which currently only support HTTP targets.

Default options support use as a proxy for HA Kubernetes master health
checks.

## Usage

Using the default listen address and local Kubernetes API server:
```
  docker run -it -p 8080:8080 measurementlab/gcp-loadbalancer-proxy:v1.0 \
     -url https://localhost:6443
```
