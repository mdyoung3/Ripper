#!/bin/bash
# 
# Copyright (c) 2019 Marc Young
#
# encode for playback on Roku or Chromcast

set -e

source includes/helpers.sh

echoy

exit

cd $1 || exit

for d in *; do
 cd $d || exit
done

exit
