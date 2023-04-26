#!/bin/sh

# Build the Jekyll site
jekyll build

# Copy the contents of the _site folder to the j-underdown.github.io folder
rsync -av --delete _site/ ../j-underdown.github.io

# Commit and push changes in jekyll-project repository
git add .
git commit -m "Update Jekyll project files"
git push

# Change to the j-underdown.github.io folder
cd ../j-underdown.github.io

# Commit and push changes in j-underdown.github.io repository
git add .
git commit -m "Update built website files"
git push

# Return to the jekyll-project folder
cd ../jekyll-project
