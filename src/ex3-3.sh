#!/bin/bash

calculate_bmi() {
    echo "몸무게를 입력하세요 (kg):"
    read weight

    echo "신장을 입력하세요 (m):"
    read height

    bmi=$(echo "scale=2; $weight / ($height * $height)" | bc)

    echo "계산된 BMI: $bmi"
    
    if (( $(echo "$bmi >= 18.5 && $bmi < 23" | bc -l) )); then
        echo "정상체중입니다."
    else
        echo "정상체중이 아닙니다."
    fi
}

# BMI 계산 함수 호출
calculate_bmi
