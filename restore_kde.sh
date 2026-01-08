#!/bin/bash

BACKUP_ARCHIVE="$1"

if [ -z "$BACKUP_ARCHIVE" ]; then
  echo "Usage: $0 /path/to/kde_config_backup_YYYY-MM-DD_HH-MM-SS.tar.gz"
  exit 1
fi

if [ ! -f "$BACKUP_ARCHIVE" ]; then
  echo "Backup file not found: $BACKUP_ARCHIVE"
  exit 1
fi

# Extract archive
echo "Extracting backup to home directory..."
tar -xzf "$BACKUP_ARCHIVE" -C "$HOME"

# Restart Plasma Shell
echo "Restarting Plasma Shell..."
kquitapp5 plasmashell
kstart5 plasmashell

echo "Restore complete. You may want to log out and back in to ensure all settings apply."
