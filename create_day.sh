#!/bin/bash
file="$1"

mkdir -p "dates"
cp --no-clobber "template" "dates/$file"
