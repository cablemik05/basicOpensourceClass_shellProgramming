#!/bin/bash

sum=0
count=0

# 입력된 모든 점수($@)를 하나씩 꺼내서 반복
for score in "$@"
do
    # 등급 판별 (90점 이상이면 A, 아니면 B)
    if [ "$score" -ge 90 ]; then
        grade="A"
    else
        grade="B"
    fi

    echo "점수: $score, 등급: $grade"

    # 평균 계산을 위해 합계와 개수 저장
    sum=$((sum + score))
    count=$((count + 1))
done

echo "----------------"

# 평균 구하기 및 평균 등급 판별
if [ "$count" -gt 0 ]; then
    avg=$((sum / count))

    if [ "$avg" -ge 90 ]; then
        avg_grade="A"
    else
        avg_grade="B"
    fi

    echo "평균 점수: $avg"
    echo "평균 등급: $avg_grade"
fi
