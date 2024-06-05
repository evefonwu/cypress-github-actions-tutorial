# in the root directory, create a tests folder where Cypress and tests will be located
mkdir tests
cd tests

# create package.json for Node.js project
npm init 

# install Cypress desktop application locally as a dev dependency
npm install cypress --save-dev

# open Cypress desktop application
npx cypress open 

# in the root directory, create GitHub Actions workflows directories
mkdir .github
cd .github
mkdir workflows
cd workflows

# move workflow.yml into .github/workflows
mv ../../demo/workflow.yml .

# in the root directory, make this a Git version controlled repository
cd ../..
git init

# move .gitignore into project root directory
# .gitignore includes, tests/node_modules/ subdirectories
mv demo/.gitignore .

# add and commit files to version control
git add .

# check files Git is tracking
git status 

# commit changes with a description
git commit -m "cypress ga tutorial"

# create new githob remote repo in your GitHub account

# add remote repo url to local repo
git remote add origin git@github.com:<your-username>/<your-repo-name>.git

# list origins 
git remote -v 

# push code to remote repo and kick off GitHub Actions workflow
git push -u origin main


