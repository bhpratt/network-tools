# network-tools

Docker image with networking debugging tools, including:

- curl
- ping
- mtr
- nslookup
- telnet
- traceroute
- wget

...and more.

# How to run

## Kubernetes

`kubectl run --rm netdebug -it --generator=run-pod/v1 --image bhpratt/network-tools bash`

## Docker

`docker run --rm -it bhpratt/network-tools bash`

# Use Case

When debugging container or Kubernetes service networking issues, you can use a container with pre-installed tools to test network connections and DNS resolution. The above commands will run a single pod or container and give you access to a bash terminal. After exiting the container, the `--rm` flag removes the running container.

This image is based on Alpine in order to keep a small footprint on your host's system.