#!/bin/bash

#First go to that directory 
cd ~/myscripts

# add all changes
 
git add .

# commit with current date and time

git commit -m "auto: update on $(date '+%Y-%m-%d %H:%M:%S')"

git push -u origin main


