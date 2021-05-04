# network-tools

Docker image with networking debugging tools, including:

- curl
- ping
- mtr
- nslookup
- openssl
- telnet
- traceroute
- wget

...and more.

# How to run

## Docker

`docker run --rm -it bhpratt/network-tools bash`

## Kubernetes

`kubectl run --rm networkdebug -it --image bhpratt/network-tools bash`

## Deployment YAML

If you want to run the container as a pod in a Kubernetes deployment, you must add a long-running command. Otherwise, the pod will exit.

Example:

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: network-tools
spec:
  selector:
    matchLabels:
      app: network-tools
  replicas: 1
  template:
    metadata:
      name: network-tools
      labels:
        app: network-tools
    spec:
      containers:
        - name: network-tools
          image: bhpratt/network-tools
          command: ["/bin/sleep","5000"]
```

# Use Case

When debugging container or Kubernetes service networking issues, you can use a container with pre-installed tools to test network connections and DNS resolution. The above commands will run a single pod or container and give you access to a bash terminal. After exiting the container, the `--rm` flag removes the running container.

This image is based on Alpine in order to keep a small footprint on your host system.