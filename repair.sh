
if git clone https://github.com/kendono/documents .repair; then

rm -rf .git

mv .repair/.git .git

rm -rf .repair

fi
