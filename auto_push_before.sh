#!/usr/bin/env bash

git config --global --add safe.directory /storage/emulated/0/mt2/anjian

git fetch --all

git merge origin/main

