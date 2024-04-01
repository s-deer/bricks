#!/bin/bash

directories=$(ls -d */)

for dir in $directories
do
  dir=${dir%/}
  mason remove "$dir"
  mason add "$dir" --path "./$dir"
done