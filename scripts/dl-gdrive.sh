#!/bin/zsh

# Download zip dataset from Google Drive
filename='market-1501-v15.09.15.zip'
fileid='0B8-rUzbwVRk0c054eEozWG9COHM'

curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
rm ./cookie
