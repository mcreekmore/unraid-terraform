#! /bin/bash

path="/usr/local/bin/mkisofs"

if [ ! -f $path ]; then
  cp ./bin/mkisofs /usr/local/bin
  echo "Copied mkisofs to PATH"
  else
  echo "mkisofs already in PATH"
fi