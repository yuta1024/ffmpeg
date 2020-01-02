FROM alpine:3.11

ARG CPU_CORE
ENV FFMPEG_VERSION=n4.2.2 \
    LIBFDK_AAC_VERSION=v2.0.1 \
    LIBVPX_VERSION=v1.8.2 \
    X265_VERSION=3.1.2

WORKDIR /opt/build
RUN set -x && \
    apk add git build-base autoconf automake libtool diffutils perl cmake nasm libass-dev fontconfig-static expat-static bzip2-static zlib-static fribidi-static freetype-static libpng-static lame-dev opus-dev libtheora-dev libtheora-static libvorbis-dev x264-dev && \
    # libfdk-aac
    git clone https://github.com/mstorsjo/fdk-aac --depth=1 -b $LIBFDK_AAC_VERSION && \
    cd fdk-aac && \
    ./autogen.sh && \
    ./configure && \
    make -j $CPU_CORE && \
    make install && \
    cd - && \
    # libvpx
    git clone https://github.com/webmproject/libvpx --depth=1 -b $LIBVPX_VERSION && \
    cd libvpx && \
    ./configure && \
    make -j $CPU_CORE && \
    make install && \
    cd -  && \
    # x265
    git clone https://github.com/videolan/x265 --depth=1 -b $X265_VERSION && \
    cd x265/build/linux/ && \
    CFLAGS="-static-libgcc" \
    CXXFLAGS="-static-libgcc" \
    cmake ../../source && \
    make -j $CPU_CORE && \
    make install && \
    cd - && \
    # ffmpeg
    git clone https://github.com/FFmpeg/FFmpeg --depth=1 -b $FFMPEG_VERSION && \
    cd FFmpeg && \
    ./configure \
      --enable-gpl \
      --enable-version3 \
      --enable-nonfree \
      --disable-ffplay \
      --disable-doc \
      --enable-libass \
      --enable-libfreetype \
      --enable-libfdk_aac \
      --enable-libmp3lame \
      --enable-libopus \
      --enable-libtheora \
      --enable-libvorbis \
      --enable-libvpx \
      --enable-libx264 \
      --enable-libx265 \
      --pkg-config-flags="--static" \
      --extra-cflags="-static" \
      --extra-ldflags="-static" \
      --disable-debug && \
    make -j $CPU_CORE
