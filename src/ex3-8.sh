#!/bin/bash

# DB.txt 파일이 있는지 확인
if [ ! -e "DB.txt" ]; then
  # 없다면 헤더와 함께 파일 생성
  echo "이름|정보" > DB.txt
fi

# 새 항목을 추가하는 함수
add_entry() {
  echo "팀원의 이름을 입력하세요:"
  read name

  echo "팀원의 생일 또는 전화번호를 입력하세요:"
  read info

  # 새 항목을 DB.txt에 추가
  echo "$name|$info" >> DB.txt

  echo "팀원 정보가 DB.txt에 추가되었습니다."
}

# 데이터베이스를 초기화하는 함수
reset_database() {
  echo "데이터베이스를 초기화하시겠습니까? (예/아니오)"
  read answer

  case $answer in
    [예Yy])
      # 예일 경우 헤더와 함께 DB.txt 파일을 재생성
      echo "이름|정보" > DB.txt
      echo "데이터베이스가 초기화되었습니다."
      ;;
    *)
      echo "데이터베이스 초기화가 취소되었습니다."
      ;;
  esac
}

# 메인 메뉴
while true; do
  echo "1. 새 항목 추가"
  echo "2. 데이터베이스 초기화"
  echo "3. 종료"
  read choice

  case $choice in
    1)
      add_entry
      ;;
    2)
      reset_database
      ;;
    3)
      echo "안녕히 가세요!"
      exit 0
      ;;
    *)
      echo "잘못된 선택입니다. 1, 2, 또는 3을 입력하세요."
      ;;
  esac
done
