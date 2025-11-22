#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="SongbirdOS"
iso_label="SongbirdOS_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="The Songbird Project <https://songbird-project.github.io>"
iso_application="SongbirdOS x86_64"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="songbird"
buildmodes=('iso')
bootmodes=('bios.syslinux'
  'uefi.grub')
pacman_conf="pacman.conf"
airootfs_image_type="erofs"
airootfs_image_tool_options=('-zlzma,109' -E 'ztailpacking')
bootstrap_tarball_compression=(zstd -c -T0 --long -19)
file_permissions=(
  ["/etc/shadow"]="0:0:400"
)
