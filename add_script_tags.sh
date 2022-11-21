#!/usr/bin/env bash

# this came from conversation here: https://unix.stackexchange.com/questions/1197/adding-a-line-of-text-to-multiple-files

echo "Moving to lyric app folder..."
cd ~/Development/lyric-web-app/

for FILE in *.html
do
    case $FILE in
        "mash1.html"|"mash2.html"|"dmk.html"|"mash3.html"| \
        "set1.html"|"set2.html"|"set3.html"|"double1.html"| \
        "double2.html"|"index.html"|"newindex.html"|"mbp.html"| \
        "singleset.html"|"ttg.html")
            echo "$FILE will be ignored";;
        *)
            sed -i 's/<script src="\.\/general\.js"><\/script>/<script src="\.\/general\.js"><\/script>\n\t\t<script src="\.\/zz_songList\.js"><\/script>\n\t\t<script src="\.\/zz_setList\.js"><\/script>/' $FILE;
            echo "$FILE should be updated!";;
    esac
done

echo "All song lyric html files should now have the songlist and setlist script calls added."