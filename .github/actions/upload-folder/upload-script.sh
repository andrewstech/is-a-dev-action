#!/bin/bash

API_KEY=${INPUT_API_KEY}
FOLDER_PATH=${INPUT_FOLDER_PATH}

# ZIP the folder and its contents
zip -r upload.zip "$FOLDER_PATH"

# Upload the ZIP using curl
curl -X POST -H "Authorization: Bearer $API_KEY" \
     -F "file=@upload.zip" \
     https://hosts.is-a.dev/api/upload

# Cleanup
rm upload.zip
