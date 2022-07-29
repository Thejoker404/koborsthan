FROM debian:latest
LABEL MAINTAINER="https://github.com/Thejoker404/princephisher"

WORKDIR /princephisher/
ADD . /princephisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./princephisher.sh"]
