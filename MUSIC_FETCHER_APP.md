# Music Fetcher (macOS App)

![Music Fetcher Icon](icon/appIcon.png)

This guide is for the **macOS app** (`Music Fetcher.app`). A simplified GUI based app rather than the shell script

## Download

1. Download `musicFetch-macOS.zip`
2. Double-click the zip to unzip it

## Install

1. Drag **Music Fetcher.app** into **Applications**
2. Done!

## If macOS blocks it (Gatekeeper)

Because this app isn’t Apple-signed/notarized, macOS may show a security prompt ("can’t be opened" / "unidentified developer"). I am broke and cant afford a developer license, I pinky-promise I dont want to hack you.

### Easiest option (no Terminal)

1. In **Applications**, right-click **Music Fetcher.app**
2. Click **Open**
3. Click **Open** again to confirm

If you don’t see the Open option, you can also go to:

- System Settings
- Privacy & Security
- Find the "Music Fetcher" blocked message
- Click **Open Anyway**

### Terminal option

This removes the quarantine flag:

```bash
xattr -dr com.apple.quarantine "/Applications/Music Fetcher.app"
```

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
