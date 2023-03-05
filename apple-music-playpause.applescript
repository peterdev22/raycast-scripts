#!/usr/bin/osascript

# @raycast.title Toggle Play/Pause
# @raycast.author Peter
# @raycast.authorURL https://github.com/peterdev22
# @raycast.description Play/pause music.

# @raycast.icon images/apple-music-logo.png
# @raycast.mode silent
# @raycast.packageName Music
# @raycast.schemaVersion 1

tell application "Music"
	if player state is playing then
		pause
		do shell script "echo Paused music"
	else if player state is paused then
		play
		do shell script "echo Resumed music"
	end if
end tell