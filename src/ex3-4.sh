#!/bin/bash

# 점수들을 저장할 빈 배열 생성
scores=()

# 무한 반복 (5번을 누르면 break로 탈출)
while true
do
    echo "--------------------------------"
    echo "1) 과목 성적 추가"
    echo "2) 입력된 모든 점수 보기"
    echo "3) 평균 점수 확인"
    echo "4) 평균 등급 (GPA) 변환"
    echo "5) 종료"
    echo "--------------------------------"
    
    # -p 옵션은 프롬프트 메시지를 띄우고 입력받는 기능
    read -p "원하는 기능을 선택하세요 (1-5): " choice

    case $choice in
        1)
            read -p "점수를 입력하세요: " input_score
            # 배열에 점수 추가
            scores+=($input_score)
            echo "점수가 추가되었습니다."
            ;;
        2)
            echo "입력된 점수 목록: ${scores[@]}"
            ;;
        3)
            # 합계 및 평균 계산
            sum=0
            count=${#scores[@]} # 배열의 길이(개수)
            
            if [ $count -eq 0 ]; then
                echo "입력된 점수가 없습니다."
            else
                for s in "${scores[@]}"; do
                    sum=$((sum + s))
                done
                avg=$((sum / count))
                echo "평균 점수: $avg"
            fi
            ;;
        4)
            # 평균 등급 계산 (이전 문제와 동일 로직)
            sum=0
            count=${#scores[@]}
            
            if [ $count -eq 0 ]; then
                echo "입력된 점수가 없습니다."
            else
                for s in "${scores[@]}"; do
                    sum=$((sum + s))
                done
                avg=$((sum / count))
                
                if [ "$avg" -ge 90 ]; then
                    echo "평균 등급: A"
                else
                    echo "평균 등급: B"
                fi
            fi
            ;;
        5)
            echo "프로그램을 종료합니다."
            break
            ;;
        *)
            echo "잘못된 입력입니다. 다시 선택해주세요."
            ;;
    esac
done
