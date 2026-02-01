#!/bin/bash

#Path Config
SAVE_DIR="./Downloads"

echo "Song Fetcher"

#Inputs
read -p "Song Name: " song_name
read -p "Artist Name: " artist_name
read -p "File type: " extension
read -p "yt/soundcloud URL: " url

echo "$song_name downloading..."

#yt-dlp command

yt-dlp -x \
	--audio-format "$extension" \
	--audio-quality 0 \
	--embed-thumbnail \
	--add-metadata \
	--metadata-from-title "$artist_name - $song_name" \
	--ppa "EmbedThumbnail+ffmpeg_o:-c:v mjpeg -vf crop=\"'if(gt(ih,iw),iw,ih)':'if(gt(iw,ih),ih,iw)'\"" \
	--parse-metadata "title:%(title)s" \
	--replace-in-metadata "title" ".*" "$song_name" \
	--replace-in-metadata "artist" ".*" "$artist_name" \
	-o "$SAVE_DIR/%(artist)s - %(title)s.%(ext)s" \
	"$url"

echo "___"
echo "DONE! FILE @ $SAVE_DIR/$artist_name - $song_name.$extension"


