#!/bin/bash

set -euo pipefail

i=0

for file in *.svg; do
  mv "$file" "page${i}.svg"
  i=$(($i+1))
done
