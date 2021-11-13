#!/bin/bash

# Basic page
wget --quiet https://www.website-url.com/sitemap.xml --no-cache --output-document - | egrep -o "https://www.website-url.com[^<]+" | while read line; do
   time curl -A 'Cache Warmer' -s -L $line > /dev/null 2>&1
   echo $line
done
