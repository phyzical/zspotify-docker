FROM python:3.9-alpine as base

RUN apk --update add git ffmpeg

FROM base as builder
RUN mkdir /install
WORKDIR /install
COPY requirements.txt /requirements.txt
RUN apk add gcc libc-dev zlib zlib-dev jpeg-dev \
    && pip install --prefix="/install" -r /requirements.txt


FROM base

COPY --from=builder /install /usr/local
-COPY /app/__main__.py
COPY /zspotify/__main__.py /app/__main__.py
-COPY /app/album.py
COPY /zspotify/album.py /app/album.py
-COPY /app/app.py
COPY /zspotify/app.py /app/app.py
-COPY /app/const.py
COPY /zspotify/const.py /app/const.py
-COPY /app/playlist.py
COPY /zspotify/playlist.py /app/playlist.py
-COPY /app/podcast.py
COPY /zspotify/podcast.py /app/podcast.py
-COPY /app/track.py
COPY /zspotify/track.py /app/track.py
-COPY /app/utils.py
COPY /zspotify/utils.py /app/utils.py
-COPY /app/zspotify.py
COPY /zspotify/zspotify.py /app/zspotify.py
COPY *zs_config.json /

WORKDIR /app
ENTRYPOINT ["/usr/local/bin/python", "/app/__main__.py"]