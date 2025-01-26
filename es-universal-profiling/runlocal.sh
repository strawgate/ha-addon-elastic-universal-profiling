docker build . --build-arg BUILD_FROM=ghcr.io/hassio-addons/debian-base/aarch64:5.1.0 --tag localtest

docker run -v ./options.json:/data/options.json --privileged -v /etc/machine-id:/etc/machine-id:ro \
-v /var/run/docker.sock:/var/run/docker.sock -v /sys/kernel/debug:/sys/kernel/debug:ro -it localtest