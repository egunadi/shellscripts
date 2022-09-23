# https://stackoverflow.com/questions/10924236/mac-zip-compress-without-macosx-folder
zip -d filename.zip __MACOSX/\*
zip -d filename.zip \*/.DS_Store
