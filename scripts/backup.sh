#!/bin/bash
#Script to backup the whole Minecraft Folder
function rcon {
# using Minecraft Rcon Library https://github.com/Tiiffi/mcrcon
  <path-to-mcrcon-executable> -H 127.0.0.1 -P 25575 -p <rcon-password> "$1"

}

rcon "say Backup startet..."

rcon "save-off"

rcon "save-all"

# Choose a file path (including name of the backup file) to save the whole minecraft folder
filePath="<path-to-backup-folder>/server-$(date +%F-%H-%M).tar.gz"
tar -cpzf $filePath -C <path-of-minecraft-folder>

rcon "save-on"

fileSize=$(du -h $filePath | awk '{print  $1}')
totalFolderSize=$(du -h <path-to-backup-folder> | awk '{print $1}')

rcon "say Backup abgeschlossen. [Letztes Backup: $fileSize | Alle Backups: $totalFolderSize]"

## Delete backups older than 3 days
find <path-to-backup-folder> -type f -mtime +3 -name '*.gz' -delete