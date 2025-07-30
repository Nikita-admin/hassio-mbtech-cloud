ARG BUILD_FROM
FROM $BUILD_FROM

ARG BUILD_ARCH
ARG FRP_VERSION

COPY configure.sh /
COPY run.sh /
COPY frpc.toml /

RUN chmod a+x /configure.sh
RUN chmod a+x /run.sh

RUN /configure.sh $BUILD_ARCH $FRP_VERSION

RUN rm -rf /configure.sh

CMD ["/run.sh"]
