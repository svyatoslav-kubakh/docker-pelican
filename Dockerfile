FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    python3.7 \
    python3-pip \
    ruby-dev \
    gcc \
    make \
    imagemagick \
 && rm -rf /var/lib/apt/lists/*

RUN gem install sass

RUN pip3 install --no-cache-dir \
    pelican \
    cssmin \
    webassets \
    Markdown
