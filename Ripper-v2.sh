#!/bin/bash
# 
# Copyright (c) 2019 Marc Young
#
# encode for playback on Roku or Chromcast
# 
# shellcheck disable=SC1091
# shellcheck disable=SC2154

set -e

# shellcheck source=includes/helpers
source includes/helpers  
source includes/yaml.sh 

create_variables properties.yml

cd ~/Videos

makedir "$title"

echo "Starting the $title"

echo "$episode" > episode

echo "$season" > season

newseason=$(cat episode)

echo "$newseason"

exit

for d in *; do
 cd "$d" || exit
 rip 
done

rm episode

echo "................."

echo "Script is complete."

exit
