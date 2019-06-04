#!/bin/sh
#
# Records iOS simulator screen and saves as a gif to simulator.gif
# A new file name may be passed as argument

FILE_NAME=${1-simulator.gif}

echo 'Recording...\n\n[Press any key to stop recording]'

xcrun simctl io booted recordVideo /tmp/simulator.mov &
PID=$!

read -n1
kill -2 $PID

echo "Converting and saving to ${FILE_NAME}\n"
ffmpeg -i /tmp/simulator.mov -vf scale=320:-1 -r 6 -f gif -y $FILE_NAME &> /tmp/ffmpeg.log

if [[ $? -eq 0 ]]; then
  echo "Gif saved to ${FILE_NAME}"
else
  cat /tmp/ffmpeg.log
fi
