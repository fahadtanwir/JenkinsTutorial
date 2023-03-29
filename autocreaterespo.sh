ACCESS_TOKEN=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


REPO_NAME=$1

curl -H "Authorization: token $ACCESS_TOKEN" https://api.github.com/user/repos -d '{"name":"'$REPO_NAME'"}'

git init
git add .
git commit -m "Initial commit"

git remote add origin https://github.com/<USERNAME>/$REPO_NAME.git
git push -u origin master
