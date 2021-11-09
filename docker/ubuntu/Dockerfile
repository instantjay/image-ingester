FROM ubuntu:20.04

RUN apt update && apt install -y imagemagick
# inotify-tools

ADD inotify.sh /bin/inotify.sh
ADD compress.sh /bin/compress.sh
ADD watch.sh /bin/watch.sh
ADD vignette /bin/vignette

ENTRYPOINT ["/bin/watch.sh"]