#!/bin/bash

FILE=~/.count
SOUND_FILE="C:\Users\CHANDRA\IdeaProjects\code-push.mp3"  # Replace with the actual path to your sound file

git_push () {
    variableCount=$(cat ~/.count)
    git add .
    echo $(($(cat ~/.count) + 1)) > ~/.count
    git commit -m "automated commit #$variableCount"
    git push
    powershell -c "(New-Object Media.SoundPlayer '$SOUND_FILE').PlaySync()"
}

if [ -f $FILE ]; then
    git_push
else
    echo "0" > ~/.count
    git_push
fi

