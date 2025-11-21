#!/bin/bash

# 정보를 저장할 파일 이름 정의
fname="DB.txt"

# 파일이 없으면 빈 파일 생성
touch $fname

while true
do
    echo "=============================="
    echo "   팀원 관리 & 일정 관리   "
    echo "=============================="
    echo "1) 팀원 정보 추가"
    echo "2) 팀원과 한 일 기록"
    echo "3) 팀원 검색"
    echo "4) 수행 내용 검색"
    echo "5) 종료"
    echo "=============================="
    
    read -p "원하는 기능을 선택하세요 (1-5): " choice

    case $choice in
        1)
            read -p "팀원 이름: " name
            read -p "전화번호: " info
            # >> 는 내용을 덮어쓰지 않고 '이어쓰기' 합니다.
            echo "[팀원] $name : $info" >> $fname
            echo "저장되었습니다."
            ;;
        2)
            read -p "날짜 (예: 2025-11-21): " date
            read -p "한 일: " work
            echo "[일정] $date : $work" >> $fname
            echo "저장되었습니다."
            ;;
        3)
            read -p "검색할 팀원 이름: " search_name
            echo ">>> 검색 결과:"
            # grep으로 파일에서 이름 검색
            grep "$search_name" $fname
            ;;
        4)
            read -p "검색할 날짜: " search_date
            echo ">>> 검색 결과:"
            grep "$search_date" $fname
            ;;
        5)
            echo "프로그램을 종료합니다."
            break
            ;;
        *)
            echo "잘못된 입력입니다."
            ;;
    esac
    echo ""
done
