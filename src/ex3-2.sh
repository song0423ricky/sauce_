echo "첫 번째 숫자를 입력하세요:"
read num1

echo "두 번째 숫자를 입력하세요:"
read num2

echo "연산자를 입력하세요 (+ 또는 -):"
read operator

if [ "$operator" == "+" ]; then
    result=$((num1 + num2))
elif [ "$operator" == "-" ]; then
    result=$((num1 - num2))
else
    echo "유효하지 않은 연산자입니다."
    exit 1
fi

echo "결과: $result"

