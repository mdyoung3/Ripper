#!/bin/bash

#Create directory structure

if ! command -v dvdbackup; then
   echo "please install dvdbackup"
   sleep 3
fi

[ -z "$1" ] && echo "Please add name of movie." && exit

[ -z "$2" ] && echo "Please add the number of discs." && exit

cd ~/Videos || exit

mkdir -p "$1"

cd "$1" || exit

for ((i=1; i<=$2; i++))
do
    mkdir -p "disc$i"
done

for i in *; do
    echo item: "$i"
done