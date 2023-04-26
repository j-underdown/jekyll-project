#!/bin/sh

# Build the Jekyll site
jekyll build

# Copy the contents of the _site folder to the j-underdown.github.io folder
cp -R _site/* ../j-underdown.github.io/
