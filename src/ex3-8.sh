#!/bin/bash

# DB 폴더 확인 및 생성
if [ ! -d "DB" ]; then
    mkdir DB
    echo "DB 폴더를 생성했습니다."
else
    echo "DB 폴더가 이미 존재합니다."
fi

# DB 폴더 안에 파일 5개 생성 (file1.txt ~ file5.txt)
cd DB
touch file1.txt file2.txt file3.txt file4.txt file5.txt
echo "파일 5개를 생성했습니다."

# 생성된 파일 압축 (files.tar.gz)
tar -czvf files.tar.gz file*.txt
echo "파일을 압축했습니다."

# 다시 원래 폴더(src)로 돌아옴
cd ..

# train 폴더 생성
if [ ! -d "train" ]; then
    mkdir train
    echo "train 폴더를 생성했습니다."
fi

# 심볼릭 링크 생성 (train 폴더에서 DB의 파일들을 가리킴)
for i in {1..5}
do
    # ln -s [원본파일] [링크이름]
    ln -s ../DB/file$i.txt train/file$i.txt
done

echo "train 폴더에 심볼릭 링크를 생성했습니다."
