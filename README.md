# youtube-to-mp3
Docker image to download mp3 audio from youtube videos.

### Pull image

```
docker pull nneves/youtube-to-mp3
```

### Run container, mp3 will be saved in the current directory

```
docker run -v $(pwd)/:/workdir nneves/youtube-to-mp3 <YOUTUBE_URL>
```

---------------------------------------------------

This image is also compatible with whalebrew format:

### Install

```
whalebrew install nneves/youtube-to-mp3
```

### Use

```
youtube-to-mp3 <YOUTUBE_URL>
```