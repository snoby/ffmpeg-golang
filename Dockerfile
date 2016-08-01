FROM golang:1.6-alpine

MAINTAINER Matt Snoby <matt.snoby@icloud.com>


#
# Tiny Container that holds ffmpeg, ffprobe and can build / run golang programs.
#
#

WORKDIR /tmp
RUN wget -q http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz && \
      tar xf ffmpeg-release-64bit-static.tar.xz     && \
      cp -rf ffmpeg-3.1.1-64bit-static/* /usr/local/bin/

ENTRYPOINT ["/bin/bash"]
