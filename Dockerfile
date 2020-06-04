FROM debian:latest
MAINTAINER Richard Kaufhold <richard.kaufhold@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
		build-essential \
		lcov \
		libcmocka-dev \
		libcmocka0 \
		&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*