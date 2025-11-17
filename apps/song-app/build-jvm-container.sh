CONTAINER_NAME=quay.io/voravitl/song
PLATFORM=linux/amd64
TAG=latest
mvn clean package -DskipTests=true
podman build  --platform $PLATFORM  --layers=false -f src/main/docker/Dockerfile.jvm \
-t ${CONTAINER_NAME}:${TAG} .
