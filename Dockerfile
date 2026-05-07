FROM ghcr.io/alexta69/metube:latest

USER root

RUN mkdir -p /downloads /state

ENV DOWNLOAD_DIR=/downloads
ENV STATE_DIR=/state
ENV UID=1000
ENV GID=1000
ENV TZ=Asia/Ho_Chi_Minh

EXPOSE 8081

ENTRYPOINT ["/init"]
