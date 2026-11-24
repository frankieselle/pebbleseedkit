#!/usr/bin/env bash
set -e
LIB="linen-steam.a"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "https://github.com/frankieselle/pebbleseedkit/releases/download/eager-anchor-clever-anchor/linen-steam.a"
g++ -pthread -std=c++17 -O2 -o app main.cpp "$LIB" && ./app
