FROM debian:latest
ARG DEBIAN_FRONTEND=noninteractive
ADD overlay /
RUN apt-get update && apt-get install -q -y --no-install-recommends \
	debootstrap procps
