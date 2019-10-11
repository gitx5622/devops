# getting this image ubuntu
FROM ubuntu

# maintainter
MAINTAINER  <ggitau5622@gmail.com>

RUN apt-get update

CMD ["echo", "My first Dockerfile"]

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:3000 || exit 1

# tell docker what port to expose
EXPOSE 3000
