FROM python:3-alpine
RUN apk add --no-cache ffmpeg
RUN pip install --upgrade pip
RUN pip install youtube-dl

RUN mkdir -p /.cache/youtube-dl/youtube-sigfuncs/
RUN chmod 777 /.cache/youtube-dl/youtube-sigfuncs/

WORKDIR /workdir

ENTRYPOINT ["youtube-dl", "-o", "%(title)s.%(ext)s", "--extract-audio", "--audio-format", "mp3"]