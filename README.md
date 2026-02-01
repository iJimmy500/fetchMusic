# fetchMusic

Download audio from a YouTube URL, convert it to your chosen format, and save it with clean metadata + an embedded thumbnail.

## Requirements

- `bash`
- [`yt-dlp`](https://github.com/yt-dlp/yt-dlp)
- `ffmpeg` (required by `yt-dlp` for audio extraction and thumbnail embedding)

### macOS install (Homebrew)

```sh
brew install yt-dlp ffmpeg
```

## Configure

Set your output directory in `fetch_music.sh`:

- `SAVE_DIR="/path/to/your/music/folder"`

Current default:

- `SAVE_DIR="./Downloads"`

## Usage

```sh
bash fetch_music.sh
```

Output files are saved to `SAVE_DIR` as:

- `Artist - Title.<ext>`

## Notes

- If `./Downloads` doesn’t exist, create it (or change `SAVE_DIR`).
- Supported URLs depend on what `yt-dlp` supports.

## AI Usage

I used AI to make this `README.md` (i would never write all this bruh), and to learn/confirm the `yt-dlp` command/flags used in `fetch_music.sh` (around lines 18–29 as I write this). The rest of the script and project was written and debugged by me personally in Vim. #Transperency ammirite?

## Troubleshooting

- **Command not found: yt-dlp**
  - Install `yt-dlp` and ensure it’s on your `PATH`.

- **ffmpeg not found / postprocessing failed**
  - Install `ffmpeg`.

- **Permission denied writing to SAVE_DIR**
  - Pick a `SAVE_DIR` you own (or fix permissions).
