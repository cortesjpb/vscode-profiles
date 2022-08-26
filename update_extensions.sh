#!/bin/bash

for folder in $(echo */)
do
    code --user-data-dir=$(pwd)/${folder}data/ --extensions-dir=$(pwd)/${folder}extensions/ --list-extensions > $(pwd)/${folder}extensions/extensions.txt
done
