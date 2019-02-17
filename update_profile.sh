#!/bin/bash

# copy local setting
cp ~/.config/Code/User/settings.json .

# copy all installed extensions
code --list-extensions | xargs -L 1 echo code --install-extension > extensions.sh

git add extensions.sh settings.json
git commit -m "updated profiles"
git push
