#!/bin/bash

set -eu

APP_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"
mkdir -p ~/.hammerspoon
cp ${APP_PATH}/init.lua ~/.hammerspoon/init.lua
