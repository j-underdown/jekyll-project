# Needed to transfer site files to the Github sites project
import shutil

source_directory = '/Users/julianunderdown/Library/Mobile Documents/com~apple~CloudDocs/Developer/jekyll-project/_site'
destination_directory = '/Users/julianunderdown/Library/Mobile Documents/com~apple~CloudDocs/Developer/j-underdown.github.io'

# Clear the destination directory before copying the files
shutil.rmtree(destination_directory, ignore_errors=True)
shutil.copytree(source_directory, destination_directory)

print("Files copied successfully.")
