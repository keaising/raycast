#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title UnixTimstamp to Date
# @raycast.mode silent
# @raycast.packageName Developer Utilities
#
# Optional parameters:
# @raycast.icon ⏲️
# @raycast.needsConfirmation false
# @raycast.argument1 { "type": "text", "placeholder": "text", "optional": false }
#
# Documentation:
# @raycast.description Convert unix timestamp to datetime
# @raycast.author Taiga
# @raycast.authorURL https://github.com/keaising


echo -n $(TZ=Asia/Shanghai date -r $1 "+%Y-%m-%d %H:%M:%S") | tee >(pbcopy)
# echo "Copied to clipboard"

