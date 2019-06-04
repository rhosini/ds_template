#!/bin/bash
# Scriptacular - gitinit.sh
# Initialize a directory with git, stage and commit existing files
# Copyright 2013 Christopher Simpkins
# MIT License

FILE_TYPE="."
INITIAL_COMMIT_MESSAGE="Initial commit"

if [ -d ".git" ]; then
  echo "This directory has already been initialized with git."
  exit 1
else
  git init
  if (( $? )); then
      echo "Unable to initialize your directory"
      exit 1
  fi
  hub create kaalih/{{cookiecutter.project_name}}
  if (( $? )); then
      echo "Unable to initialize your directory"
      exit 1
  fi
  #git remote add origin git@github.com:kaalih/test.git
  #if (( $? )); then
  #    echo "Unable to create remote"
  #    exit 1
#fi
  touch README.md
  touch .gitignore
  echo " ----- "
  echo "The directory was initialized and an a new remote repo was created in github."
fi
exit 0