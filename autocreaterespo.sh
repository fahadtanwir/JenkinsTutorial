ACCESS_TOKEN=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

# Read the repository name from the argument passed from the GUI
REPO_NAME=$1

# Create the new repository
curl -H "Authorization: token $ACCESS_TOKEN" https://api.github.com/user/repos -d '{"name":"'$REPO_NAME'"}'

# Initialize the local Git repository
git init
git add .
git commit -m "Initial commit"

# Push the local repository to the remote repository on GitHub
git remote add origin https://github.com/<USERNAME>/$REPO_NAME.git
git push -u origin master
