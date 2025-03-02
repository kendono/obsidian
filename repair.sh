
if git clone https://github.com/kendono/obsidian .repair; then

rm -rf .git

mv .repair/.git .git

rm -rf .repair

fi
