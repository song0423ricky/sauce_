#!/bin/bash

# DB.txt 파일이 있는지 확인
if [ ! -e "DB.txt" ]; then
  echo "데이터베이스 파일이 존재하지 않습니다. 프로그램을 종료합니다."
  exit 1
fi

# 이름으로 검색하는 함수
search_by_name() {
  echo "검색할 팀원의 이름을 입력하세요:"
  read search_name

  # DB.txt에서 이름으로 검색 후 결과를 출력
  result=$(grep -i "$search_name" DB.txt)

  if [ -n "$result" ]; then
    echo "검색 결과:"
    echo "$result"
  else
    echo "일치하는 팀원이 없습니다."
  fi
}

# 메인 메뉴
while true; do
  echo "1. 이름으로 검색"
  echo "2. 종료"
  read choice

  case $choice in
    1)
      search_by_name
      ;;
    2)
      echo "프로그램을 종료합니다."
      exit 0
      ;;
    *)
      echo "잘못된 선택입니다. 1 또는 2를 입력하세요."
      ;;
  esac
done
