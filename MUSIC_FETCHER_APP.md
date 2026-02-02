# Music Fetcher (macOS App)

![Music Fetcher Icon](icon/appIcon.png)

This guide is for the **macOS app** (`Music Fetcher.app`). A simplified GUI based app rather than the shell script

## Download

1. Download `musicFetch-macOS.zip`
2. Double-click the zip to unzip it

## Install

1. Drag **Music Fetcher.app** into **Applications**
2. Done!

## One-time requirements

This app uses `yt-dlp` + `ffmpeg` + GTK installed via Homebrew:

```bash
brew install gtk+3 pkg-config yt-dlp ffmpeg
```

## Using the app

1. Paste a YouTube/SoundCloud URL
2. Enter Song Name + Artist Name
3. Pick an audio format
4. Click **Download Music**

## Where downloads go

Files are saved to:

- `~/Downloads/MusicFetcher/`

## AI Usage

I used Claude to build this GUI app. The entire app is basically a wrapper based on the `fetch_music.sh` script. I want to make it clear none of the app was built by me.

## Troubleshooting

- **App opens then closes immediately**
  - Install requirements:
    - `brew install gtk+3 pkg-config yt-dlp ffmpeg`

- **Download fails**
  - Try updating `yt-dlp`:
    - `brew upgrade yt-dlp`

- **Nothing shows up in Downloads**
  - Check `~/Downloads/MusicFetcher/`
