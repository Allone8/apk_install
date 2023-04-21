#!/bin/bash
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
apk_folder="$script_dir/apk"
adb="$script_dir/tools/MacOS/adb"

chmod -R 777 "$adb" 

for apk_file in "$apk_folder"/*.apk
do
    echo Installing "$(basename "$apk_file")"...
    "$adb" install -r -d "$apk_file"
done

echo All APKs installed!
read -n 1 -s -r -p "Press any key to continue..."