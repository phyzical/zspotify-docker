![Stars](https://img.shields.io/github/stars/Footsiefat/zspotify.svg)
![Forks](https://img.shields.io/github/forks/Footsiefat/zspotify.svg)
![Size](https://img.shields.io/github/repo-size/Footsiefat/zspotify)

# ZSpotify

### A Spotify downloader needing only a python interpreter and ffmpeg.

<p align="center">
  <img src="https://user-images.githubusercontent.com/12180913/138040605-c9d46e45-3830-4a4b-a7ac-c56bb0d76335.png">
</p>

[Discord Server](https://discord.gg/skVNQKtyFq) - [Matrix Server](https://matrix.to/#/#zspotify:matrix.org) - [Gitea Mirror](https://git.robinsmediateam.dev/Footsiefat/zspotify) - [Main Site](https://footsiefat.github.io/)

```
Requirements:

Binaries

- Python 3.9 or greater
- ffmpeg*
- Git**

Python packages:

- pip install -r requirements.txt

```

\*ffmpeg can be installed via apt for Debian-based distros or by downloading the binaries from [ffmpeg.org](https://ffmpeg.org) and placing them in your %PATH% in Windows. Mac users can install it with [Homebrew](https://brew.sh) by running `brew install ffmpeg`.

\*\*Git can be installed via apt for Debian-based distros or by downloading the binaries from [git-scm.com](https://git-scm.com/download/win) for Windows.

### Command line usage:

```
Basic usage:
  python zspotify                                      Loads search prompt to find then download a specific track, album or playlist
  python zspotify <track/album/playlist/episode url>   Downloads the track, album, playlist or podcast episode specified as a command line argument
  python zspotify <artist url>                         Downloads all albums by specified artist

Extra command line options:
  -p, --playlist       Downloads a saved playlist from your account
  -ls, --liked-songs   Downloads all the liked songs from your account

Options that can be configured in zs_config.json:
  ROOT_PATH           Change this path if you don't like the default directory where ZSpotify saves the music
  ROOT_PODCAST_PATH   Change this path if you don't like the default directory where ZSpotify saves the podcasts

  SKIP_EXISTING_FILES Set this to false if you want ZSpotify to overwrite files with the same name rather than skipping the song

  MUSIC_FORMAT        Can be "mp3" or "ogg", mp3 is required for track metadata however ogg is slightly higher quality as it is not transcoded.

  FORCE_PREMIUM       Set this to true if ZSpotify isn't automatically detecting that you are using a premium account

  ANTI_BAN_WAIT_TIME  Change this setting if the time waited between bulk downloads is too high or low
  OVERRIDE_AUTO_WAIT  Change this to true if you want to completely disable the wait between songs for faster downloads with the risk of instability
```

### Docker Usage

```
Pull the official docker image (automatically updates):
  docker pull cooper7692/zspotify-docker
Or build the docker image yourself from the Dockerfile:
  docker build -t zspotify .
Create and run a container from the image:
  docker run --rm -v "$PWD/ZSpotify Music:/ZSpotify Music" -v "$PWD/ZSpotify Podcasts:/ZSpotify Podcasts" -it zspotify
```
### Windows Install Guide
```
install python from 
https://www.python.org/downloads/release/python-397/
follow on screen prompts and complete.

install git from 
https://gitforwindows.org/
follow on screen prompts and complete.

press CTR+R or in search type RUN
enter 	sysdm.cpl 
navigate to the advanced tab and click Environment Variables
under system variables click Path and Click Edit
click New
and add C:\Program Files\Python39\Scripts this location is for the 64bit vers. python, if using the 32 bit version is should be C:\Program Files (x86)\Python39\Scripts
click new 
and add C:\Program Files\Git\bin
then reboot
now open your ZSpotify Folder and open a CMD prompt there
type pip install -r requirements.txt 

once this is completed you are done.

inside the Zspotify folder type - py zspotify hit eneter
enter your username and password, the password will be hidden but is being typed.
settings can be configured by editing the zs_config.json file using a text editor like NP++
```

### Will my account get banned if I use this tool?

Currently no user has reported their account getting banned after using ZSpotify.
This isn't to say _you_ won't get banned as it is technically against Spotify's TOS.
**Use ZSpotify at your own risk**, the developers of ZSpotify are not responsible if your account gets banned.

### What do I do if I see "Your session has been terminated"?

If you see this, don't worry! Just try logging back in. If you see the incorrect username or password error, reset your password and you should be able to log back in and continue using Spotify.

### Contributing

Please refer to [CONTRIBUTING](CONTRIBUTING.md)

### Changelog

Please refer to [CHANGELOG](CHANGELOG.md)

### Common Errors

Please refer to [COMMON_ERRORS](COMMON_ERRORS.md)
