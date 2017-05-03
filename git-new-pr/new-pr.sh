# Open new pr direct from command line
# 1. Copy paste this code in /usr/local/bin
# 2. run sudo chmod a+x new-pr
# 3. use new-pr from anywhere

repoUrl=`git config --get remote.origin.url` # get remote repo url
if [ -z $repoUrl ]; then # check if current directory is git repo or not
echo "Not a git repo"
elif [ -z $1 ]; then # check if base branch name is passed or not
  echo "Pass base branch name. new-pr base-branch-name"
else
removeGitExtension="${repoUrl/.git/}" # remove .git extention from url
branchName=`git rev-parse --symbolic-full-name --abbrev-ref HEAD` # get current branch name
prUrl="$removeGitExtension/compare/$1...$branchName" # create new pull request url
open -a /Applications/Google\ Chrome.app $prUrl # launch chrome with url
fi
