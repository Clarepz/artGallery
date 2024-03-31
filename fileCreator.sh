#!/bin/zsh
i=20
for filename in assets/images/actuel/*; do
    i=$((i+1))
    #echo "${filename##*/}"
    cd content/accueil/actuel
    read -r -d '' STR << EOM
    ---
images:
- /images/actuel/${filename##*/}
title: peinture $i
#date: 2022-07-23
tags:
- archive # all posts
- expo
- accueil

---
EOM
    echo $i
    echo -e "$STR" > expo${filename##*/}.md
    #sed -i 's!# Markdown!!' expo${filename##*/}.md
    cd ..
    cd ..
    cd ..
done