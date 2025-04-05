#!/bin/bash

# Set your variables
# Use the uploads playlist URL instead of the channel URL
CHANNEL_URL="https://www.youtube.com/playlist?list=UUfgSK03smBRDwOVeftHbDrA"
DOWNLOAD_DIR="/Users/colindabkowski/Library/CloudStorage/OneDrive-AldenCentralSchoolDistrict/WACS Archive"
COOKIES_FILE="/Users/colindabkowski/Downloads/cookies.txt"  # Adjust this path to your exported cookies file
START_VIDEO=92

# Make download folder if not exists
mkdir -p "$DOWNLOAD_DIR"

# Download videos (only new ones after first run)
yt-dlp \
  --cookies "$COOKIES_FILE" \
  --playlist-start "$START_VIDEO" \
  --download-archive "$DOWNLOAD_DIR/downloaded.txt" \
  --format "bestvideo+bestaudio/best" \
  --output "$DOWNLOAD_DIR/%(title)s.%(ext)s" \
  "$CHANNEL_URL"
