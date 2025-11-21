#!/bin/bash

while true
do
    echo "=============================="
    echo "   System Status Check Menu   "
    echo "=============================="
    echo "1) 사용자 정보 확인"
    echo "2) CPU 사용률 확인 (Top 5)"
    echo "3) 메모리 사용량 확인"
    echo "4) 디스크 사용량 확인"
    echo "5) 종료"
    echo "=============================="
    
    read -p "원하는 기능을 선택하세요 (1-5): " choice

    case $choice in
        1)
            echo ">>> 현재 사용자 정보:"
            whoami
            id
            ;;
        2)
            echo ">>> CPU 사용률 (상위 5줄):"
            # -b: 배치모드(텍스트 출력용), -n 1: 1번만 실행
            top -b -n 1 | head -n 12
            ;;
        3)
            echo ">>> 메모리 사용량:"
            # -h: 사람이 읽기 편한 단위(GB, MB)로 표시
            free -h
            ;;
        4)
            echo ">>> 디스크 사용량:"
            df -h
            ;;
        5)
            echo "프로그램을 종료합니다."
            break
            ;;
        *)
            echo "잘못된 입력입니다."
            ;;
    esac
    echo "" # 줄바꿈
done
