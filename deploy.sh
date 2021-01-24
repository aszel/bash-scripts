#!/usr/bin/env bash

CODE_DIRECTORY="/home/martin/Code/"
PROJECT="MartinsWebsite"
BUILD_DIRECTORY="_site"
STATIC_CONTENT_DIRECTORY="MartinsWebsite-static"

PATH_TO_PROJECT="${CODE_DIRECTORY}${PROJECT}/"
BUILD_DEST="${PATH_TO_PROJECT}${BUILD_DIRECTORY}"
STATIC_CONTENT_DEST="${CODE_DIRECTORY}${STATIC_CONTENT_DIRECTORY}"

echo "Path is ${PATH_TO_PROJECT}"
echo "Build destination is ${BUILD_DEST}"

echo "Change directory to ${PATH_TO_PROJECT}"
cd ${PATH_TO_PROJECT}

echo "Building jekyll..."
#bundle exec jekyll build
echo "Building done"

echo "Copying contents of ${BUILD_DEST} to ${STATIC_CONTENT_DEST}"
cp -r ${BUILD_DEST}/* ${STATIC_CONTENT_DEST}
echo "Copying done"

echo "Change directory to ${STATIC_CONTENT_DEST}"
cd ${STATIC_CONTENT_DEST}

echo "git add + commit + push"
git add .
git commit -m 'update'
git push origin master
echo "git stuff done"

echo "Finished"
