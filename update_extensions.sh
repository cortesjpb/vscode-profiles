#!/bin/bash
for folder in $(echo */)
do
  for extension in $(cat "${folder}extensions/extensions.txt")
  do
    echo "code --user-data-dir=$(pwd)/${folder}data/ --extensions-dir=$(pwd)/${folder}extensions/ --list-extensions > $(pwd)/${folder}extensions/extensions.txt"
  done
done

# code --user-data-dir=/{path/to/folder}/.vscode-profiles/base/data/ --extensions-dir=/{path/to/folder}/.vscode-profiles/base/extensions/ --list-extensions > base/extensions/extensions.txt
# code --user-data-dir=/{path/to/folder}/.vscode-profiles/java/data/ --extensions-dir=/{path/to/folder}/.vscode-profiles/java/extensions/ --list-extensions > java/extensions/extensions.txt
# code --user-data-dir=/{path/to/folder}/.vscode-profiles/python/data/ --extensions-dir=/{path/to/folder}/.vscode-profiles/python/extensions/ --list-extensions > python/extensions/extensions.txt
# code --user-data-dir=/{path/to/folder}/.vscode-profiles/react/data/ --extensions-dir=/{path/to/folder}/.vscode-profiles/react/extensions/ --list-extensions > react/extensions/extensions.txt
