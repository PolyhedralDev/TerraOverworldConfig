#!/bin/bash

# Force pushes the comments of WIKI_DIRECTORY to the wiki page of WIKI_PARENT_REPOSITORY

if [ "$GITHUB_ACTIONS" != true ]; then
    echo "This script must be ran via GitHub actions."
    exit 1
fi

echo "Deleting .git folder..."
rm -rf .git

echo "Setting up temporary repository in $WIKI_DIRECTORY..."
cd $WIKI_DIRECTORY
git init

echo "Setting up authentication..."
git config user.name $LOGIN_NAME
git config user.email $LOGIN_EMAIL

echo "Committing changes..."
git add *
git commit -m "GitHub Action Deployment"

echo "Pushing to wiki..."
git remote add origin https://$ACCESS_TOKEN@github.com/$WIKI_PARENT_REPOSITORY.wiki.git
git push origin master --force
