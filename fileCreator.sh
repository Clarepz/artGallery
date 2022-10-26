#! /usr/bin/bash
#cd content/accueil/expo
i=0
for filename in assets/images/CarolePainting/*; do
    i=$((i+1))
    #echo "${filename##*/}"
    cd content/accueil/expo
    read -r -d '' STR << EOM
    ---
images:
- /images/CarolePainting/${filename##*/}
title: peinture $i
#date: 2022-07-23
tags:
- archive # all posts
- expo
- accueil

---

# Markdown

EOM
    echo $i
    #echo -e "$STR" > expo${filename##*/}.md
    sed -i 's!# Markdown!!' expo${filename##*/}.md
    cd ..
    cd ..
    cd ..
done