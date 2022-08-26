#!/bin/bash

for folder in $(echo */)
do
  echo "alias code${folder:0:-1}=\"code --user-data-dir=$(pwd)/${folder}data/ --extensions-dir=$(pwd)/${folder}extensions/\"" >> ~/.zshrc;
  for extension in $(cat "${folder}extensions/extensions.txt")
  do
    code --user-data-dir=$(pwd)/${folder}data/ --extensions-dir=$(pwd)/${folder}extensions/ --install-extension ${extension}
  done
done