repoUrl=`git config --get remote.origin.url`
removeGitExtension="${repoUrl/.git/""}"
branchName=`git rev-parse --symbolic-full-name --abbrev-ref HEAD`
prUrl="$removeGitExtension/compare/$1...$branchName"
open -a /Applications/Google\ Chrome.app $prUrl
