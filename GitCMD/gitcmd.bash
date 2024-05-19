repo=$1
dir=$2

# Configure gitbash before using these commands
# git config --global user.name "Tniromin"
# git config --global user.email "tniromin2@gmail.com"


# Use personal access token in place of pass wod

## For errors
# git reset --hard

if [ "$#" -ne 2 ];then
    echo "Usage: gitcmd.bash <URL-to-Repo> <Directory-Name>"
    echo "Using custom DIR name & Custom Test Repo"
    repo="https://github.com/tniromin/test.git "
    dir="testrep"
fi

git clone $repo $dir
git remote add origin $repo


git checkout -b dev


echo "$(date)" >> $dir/file.md

git add .
git commit -m "UPDATE: file"
git checkout main
git merge dev

git add .
git commit -m "UPDATE: Dev Merge"


git push --set-upstream origin main
git push origin

git remote remove origin
