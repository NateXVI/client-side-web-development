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

echo -e '\nrendering md files to html'
find ~/public_html -name '*.md' -exec python3 render/render.py {} \;
find ~/public_html -name '*.md' -exec rm {} \;

echo 'compiling test app and moving static files to public_html'
cd test
npm ci > /dev/null
npm run build > /dev/null
mv out ~/public_html/test

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

echo 'renaming assignment 6'
mv Assignment06 a-simple-form

echo 'building assignment 7'
cd Assignment07
export BASE_PATH=/~nd37549/a-canvas-2d-graphics-scene/ # set the base path for this project
npm ci 2>> /dev/null
npm run deploy 2>> /dev/null
mv dist/ ../a-canvas-2d-graphics-scene # move the build to the project path
cd ../
rm -rf Assignment07

echo -e "\nDeployed to https://icarus.cs.weber.edu/~${USER}/"
echo "            https://icarus.cs.weber.edu/~${USER}/profile/"
echo "            https://icarus.cs.weber.edu/~${USER}/syllabus/"
echo "            https://icarus.cs.weber.edu/~${USER}/recreating-a-sample-page/"
echo "            https://icarus.cs.weber.edu/~${USER}/landing-page-layout/"
echo "            https://icarus.cs.weber.edu/~${USER}/page-layout-with-flexbox/"
echo "            https://icarus.cs.weber.edu/~${USER}/a-simple-form/"
echo "            https://icarus.cs.weber.edu/~${USER}/a-canvas-2d-graphics-scene/"
