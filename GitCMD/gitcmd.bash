repo=$1
dir=$2

# Configure gitbash before using these commands
# git config --global user.name "Tniromin"
# git config --global user.email "tniromin2@gmail.com"


# Use personal access token in place of pass wod



if [ "$#" -ne 2 ];then
    echo "Usage: gitcmd.bash <URL-to-Repo> <Directory-Name>"
    echo "Using custom DIR name & Custom Test Repo"
    repo="https://github.com/tniromin/test.git"
    dir="repo"
fi

git clone $repo $dir

git checkout -b dev

touch $dir/readme.md
echo "$(date)" >> $dir/readme.md

git add .
git commit -m "ADD: New files"
git checkout main
git merge dev

git push origin main