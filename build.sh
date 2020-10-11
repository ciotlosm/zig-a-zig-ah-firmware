# docker run --rm --privileged -v $(pwd):/data homeassistant/amd64-builder --amd64 -t /data --no-cache
docker build --build-arg BUILD_FROM="homeassistant/amd64-base:latest" -t local/my-test-addon .