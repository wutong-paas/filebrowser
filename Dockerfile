FROM swr.cn-southwest-2.myhuaweicloud.com/wutong/alpine:3.15
ARG TARGETARCH

RUN mkdir /app \
  && apk add --update apache2-utils \
  && rm -rf /var/cache/apk/*
ENV TZ=Asia/Shanghai

WORKDIR /

COPY docker_config.json /.filebrowser.json
COPY bin/${TARGETARCH}/filebrowser .

CMD ["/filebrowser"]