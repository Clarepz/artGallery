#! /usr/bin/bash
#cd content/accueil/expo
i=0
for filename in assets/images/CarolePainting/*; do
    i=$((i+1))
    echo "${filename##*/}"
    cd content/accueil/expo
    touch expo${i}.md
    cd ..
    cd ..
    cd ..
done