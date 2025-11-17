CONTAINER_NAME=quay.io/voravitl/song-indexer
PLATFORM=linux/amd64
TAG=latest
mvn clean package -DskipTests=true
podman build  --platform $PLATFORM  -f src/main/docker/Dockerfile.jvm \
-t ${CONTAINER_NAME}:${TAG} .
