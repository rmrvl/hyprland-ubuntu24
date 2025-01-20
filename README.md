# Build hyprland in a container

## Create Build Container Image

```
podman pull docker.io/library/ubuntu:24.04
podman build -t hyprbuilder/ubuntu:24.04 .
podman run -d --rm --name hypr -ti hyprbuilder/ubuntu:24.04 tail -f /dev/null 
podman cp build.sh hypr:/home/ubuntu
podman cp libs hypr:/home/ubuntu
podman cp hypr hypr:/home/ubuntu
```

## Build hyprland
```
podman exec -ti hypr bash
cd /home/ubuntu
bash /home/ubuntu/build.sh
```

## Get the binaries

From outside the pod, just run the command `podman cp hypr:/opt build/`


# Create Debian Packages

```
bash pkg-build.sh
```
