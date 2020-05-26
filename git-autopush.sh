#!/bin/sh
git add .
git commit -m "Automatic Commit `date +%F-%T`"
git push -f origin master