# Doc
``` bash
git clone <repo-URL> <dir> # Pass url and create a new custom repo to clone the repo to
git remote add orign <repo-URL> # Initialize remote repository for tracking and updating
git checkout -b dev # Create branch dev and switch to it

# Stage and commit all changes
git add .
git commit -m "message"

# Change to main and merge dev
git checkout main
git merge dev

# push to repo on branch main
git push -u origin main

```