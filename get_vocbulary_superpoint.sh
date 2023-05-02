#!/bin/bash
fileid="1p1QEXTDYsbpid5ELp3IApQ8PGgm_vguC"
filename="Vocabulary/superpoint_voc.yml.gz"
html=`curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}"`
curl -Lb ./cookie "https://drive.google.com/uc?export=download&`echo ${html}|grep -Po '(confirm=[a-zA-Z0-9\-_]+)'`&id=${fileid}" -o ${filename}
