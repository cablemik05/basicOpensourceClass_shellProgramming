#!/bin/bash

# 입력받은 두 숫자를 변수에 저장
num1=$1
num2=$2

# 사칙연산 수행 (정수 범위)
echo "input: $num1 $num2"
echo "더하기: $(($num1 + $num2))"
echo "빼기: $(($num1 - $num2))"
echo "곱하기: $(($num1 * $num2))"
echo "나누기: $(($num1 / $num2))"
