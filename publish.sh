#!/bin/bash

# set to strict mode
set -euo pipefail

#clear public_html directory and ignore errors
echo 'clearing public_html directory'
rm -rf ~/public_html 2>> /dev/null || true
mkdir ~/public_html

# move Assignment1 (profile) files to public_html
echo 'moving profile files to public_html'
rsync -a ./Assignments/Assignment1/ ~/public_html/

# move all the assingments into public_html
echo 'moving other assignments to public_html'
rsync -a ./Assignments/ ~/public_html

# rename things how I want them to be
echo -e '\nrenaming assignment 1'
cd ~/public_html
mv Assignment1 profile

echo 'renaming assignment 2'
mv Assignment2 syllabus
mv syllabus/syllabus.html syllabus/index.html

echo -e "\nDeployed to https://icarus.cs.weber.edu/~${USER}/"
echo "            https://icarus.cs.weber.edu/~${USER}/profile/"
echo "            https://icarus.cs.weber.edu/~${USER}/syllabus/"
