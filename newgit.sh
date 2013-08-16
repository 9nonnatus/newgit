#!/bin/bash
# Usage: newgit repo-name "Repo description"
# This will create the remote and local repos for you (including the local folder).
# Don't forget to change uname to your GitHub username.

name=$1
desc=$2
uname='9nonnatus'

curl -u $uname https://api.github.com/user/repos -d '{"name":"'"$name"'","description":"'"$desc"'"}'

mkdir $name
cd $name

git init
git remote add origin git@github.com:$uname/$name.git
