ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8
ARG BUILD_VERSION

RUN apk add --no-cache --virtual .build-dependencies \
    py3-pip wget
RUN wget -O CC26X2R1.zip https://raw.githubusercontent.com/Koenkk/Z-Stack-firmware/master/coordinator/Z-Stack_3.x.0/bin/CC26X2R1_20200925.zip && \
    unzip CC26X2R1.zip && \
    wget -O cc2538-bsl.zip https://codeload.github.com/JelmerT/cc2538-bsl/zip/master && \
    unzip cc2538-bsl.zip && \
    pip3 install pyserial intelhex
