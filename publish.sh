#!/bin/bash

# set to strict mode
set -euo pipefail

echo 'clearing public_html directory'
rm -rf ~/public_html 2>> /dev/null || true
mkdir ~/public_html

echo 'moving profile files to public_html'
rsync -a ./Home/ ~/public_html/

echo 'moving other assignments to public_html'
rsync -a ./Assignments/ ~/public_html

# rename things how I want them to be
echo -e '\nrenaming assignment 1'
cd ~/public_html
mv Assignment01 profile

echo 'renaming assignment 2'
mv Assignment02 syllabus
mv syllabus/syllabus.html syllabus/index.html

echo 'renaming assignment 3'
mv Assignment03 recreating-a-sample-page

echo 'renaming assignment 4'
mv Assignment04 landing-page-layout

echo 'renaming assignment 5'
mv Assignment05 page-layout-with-flexbox

echo -e "\nDeployed to https://icarus.cs.weber.edu/~${USER}/"
echo "            https://icarus.cs.weber.edu/~${USER}/profile/"
echo "            https://icarus.cs.weber.edu/~${USER}/syllabus/"
echo "            https://icarus.cs.weber.edu/~${USER}/recreating-a-sample-page/"
echo "            https://icarus.cs.weber.edu/~${USER}/landing-page-layout/"
echo "            https://icarus.cs.weber.edu/~${USER}/page-layout-with-flexbox/"
