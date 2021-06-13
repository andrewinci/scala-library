#!/bin/bash

GH_REPO='{{ cookiecutter.repo_name }}'
GH_OWNER='{{ cookiecutter.github_owner }}'
ORG='{{ cookiecutter.organization }}'

TEMP_SSH_FINGERPRINT="4a:a4:d9:c9:0b:4f:04:b7:78:df:31:88:7c:20:08:50"
TEMP_ORG_FOLDER="_temp_org"

cr=`echo $'\n.'`

echo "Fix the folder structure to respect the organization name"

ORG_FOLDER=$(echo $ORG | sed "s/\./\//g")

# Fix integration test
pushd src/it/scala
mkdir -p $ORG_FOLDER
mv ${TEMP_ORG_FOLDER}/* ${ORG_FOLDER}
rm -rf $TEMP_ORG_FOLDER
popd

pushd src/main/scala
mkdir -p $ORG_FOLDER
mv ${TEMP_ORG_FOLDER}/* ${ORG_FOLDER}
rm -rf $TEMP_ORG_FOLDER
popd

pushd src/test/scala
mkdir -p $ORG_FOLDER
mv ${TEMP_ORG_FOLDER}/* ${ORG_FOLDER}
rm -rf $TEMP_ORG_FOLDER
popd


# Initialize the local git repository
git init
git add -A
git commit -m "chore:First commit [ci skip]"
git branch -m main

# Push first commit to github
while true; do
    read -p "${cr%.}Sync git repo with github remote: https://github.com/$GH_OWNER/$GH_REPO.git?${cr%.}Make sure the Github repository already exists first${cr%.}Answer (y/n): " yn
    case $yn in
        [Yy]* ) git remote add origin "https://github.com/$GH_OWNER/$GH_REPO.git"
                git push --set-upstream origin main
                break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

read -p "${cr%.}Enable CircleCI build at https://app.circleci.com/projects/project-dashboard/github/$GH_OWNER" e
read -p "${cr%.}Set the env variable GITHUB_TOKEN in CircleCI to allow publishing packages${cr%.}https://app.circleci.com/settings/project/github/$GH_OWNER/$GH_REPO/environment-variables" e
read -p "${cr%.}Add an SSH key to allow auto release${cr%.}https://app.circleci.com/settings/project/github/$GH_OWNER/$GH_REPO/ssh${cr%.}New SSH key (q to quit): " sshkey
case $sshkey in
    [Qq]* ) exit;;
    * ) perl -i -pe"s/$TEMP_SSH_FINGERPRINT/$sshkey/g" .circleci/config.yml;
        git pull
        git add .circleci/config.yml
        git commit -m "ci: Update SSH fingerprint"
        git push
esac