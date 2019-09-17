#!/bin/bash
# 
# Copyright (c) 2019 Marc Young
#
# encode for playback on Roku or Chromcast

set -e

# shellcheck source=includes/helpers
source includes/helpers  

cd "$1" || exit

for d in *; do
 cd "$d" || exit
done

exit
