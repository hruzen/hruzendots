#!/bin/bash
# This script will download a youtube video

echo "Enter the youtube url now and press ENTER"

read url
yt-dlp --audio-quality 0 --embed-thumbnail --extract-audio --audio-format mp3 $url
