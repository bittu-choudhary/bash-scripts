repoUrl=`git config --get remote.origin.url`
if [ -z $repoUrl ]; then
echo "Not a git repo"
elif [ -z $1 ]; then
  echo "Pass base branch name. new-pr base-branch-name"
else
removeGitExtension="${repoUrl/.git/}"
branchName=`git rev-parse --symbolic-full-name --abbrev-ref HEAD`
prUrl="$removeGitExtension/compare/$1...$branchName"
open -a /Applications/Google\ Chrome.app $prUrl
fi
