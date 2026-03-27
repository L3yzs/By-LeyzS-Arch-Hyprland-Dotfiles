#!/bin/bash
# * 🌌 L€yzS Ricing - Seamless Live Wallpaper Switcher 🌌
# 🛠️  Engineered by L€yzS
# 🪄  No more black screens! Perfect transition from image to video.
#
# [TR] Siyah ekranı bitiren illüzyon: Önce kareyi dondur, sonra videoyu üzerine bindir.
# [EN] The illusion that kills black frames: Freeze the frame first, then overlay the video.

set -eu

# [TR] Yollar / [EN] Paths
WALL_DIR="/home/leyzs/.config/Live Wallpapers"
TEMP_THUMB="/tmp/wall_thumb.png"

# [TR] WOFI: Seçim menüsü / [EN] WOFI: Selection menu
choice=$(ls "$WALL_DIR" | grep ".mp4" | wofi --dmenu --style "$HOME/.config/wofi/style.css" -->

# [TR] Seçim yoksa çık / [EN] Exit if no choice
[ -z "$choice" ] && exit 1
VIDEO_PATH="$WALL_DIR/$choice"

# 🪄 1️⃣ [TR] GEÇİŞ İLLÜZYONU: Videonun ilk karesini ışık hızında yakala.
# 🪄 1️⃣ [EN] TRANSITION ILLUSION: Capture the first frame at lightning speed.
ffmpeg -y -i "$VIDEO_PATH" -vframes 1 -f image2 -update 1 "$TEMP_THUMB" > /dev/null 2>&1

# 🖼️ 2️⃣ [TR] SWWW: Ekranı bu kareyle doldur. Siyah ekranı asla görmezsin! (270Hz FPS)
# 🖼️ 2️⃣ [EN] SWWW: Fill the screen with this frame. Zero black frames! (270Hz FPS)
swww img "$TEMP_THUMB" --transition-type fade --transition-step 255 --transition-fps 270

# ⚡ 3️⃣ [TR] VİDEO START: SWWW arkada resmi tutarken mpvpaper üzerine biner.
# ⚡ 3️⃣ [EN] VIDEO START: While swww holds the image, mpvpaper overlays on top.
pkill mpvpaper || true
mpvpaper -o "--loop --hwdec=auto-safe --no-audio" DP-1 "$VIDEO_PATH" &
mpvpaper -o "--loop --hwdec=auto-safe --no-audio --panscan=1.0" HDMI-A-1 "$VIDEO_PATH" &

(
    if command -v swaync-client >/dev/null 2>&1; then
        swaync-client -R && swaync-client -rs
    fi

    sleep 0.60
    if command -v wal >/dev/null 2>&1; then
        wal -i "$TEMP_THUMB" -n -q -t -e
        cp "$TEMP_THUMB" "$HOME/.cache/current_wallpaper.png"
    fi

    if command -v swaync-client >/dev/null 2>&1; then
        swaync-client -R && swaync-client -rs
    fi
) &
