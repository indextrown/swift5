/*
 
 (21강) 삼항연산자
 
 연산자
 - 수학적인 기호
 
 삼항연산자
 - 세가지 항을 가진 연산자(수학적인 기호)
 - 피 연산자가 3개가 있는 경우
 - ?와 : 을 사용
 - 일반적으로 개발자들이 보기 편하게 쓸 때 사용
 - 할당연산자는 가장 나중에 고려
 - 실제로 if문과 동일하게 쓸 수 있다
 - 실제 앱을 만들 때 많이 사용한다
 
 (22강) 범위연산자
 
 범위연산자
 - 범위를 나타내는 숫자 기호(연산자)
 - 제한된 숫자 범위를 표기하기 위한 연산자
 - 자체가 특별한 타입을 의미한다
 
 특징
 - 내림차순 형식으로 표기 불가능
 - 내림차순으로 변환은 가능
 - 실수 형식의 범위도 사용 가능 but 실제로 사용 잘 안함
 
 Closed Range Operator(폐쇄 범위 연산자)
 - 1…10 (정수 1부터 10 이하)
 - 1…(정수 1 이상)
 - …10 (정수가 표현할 수 있는 가장 음수의 가장 낮은 숫자부터 10이하)
 - 한 방향은 열리도록 정의하는 것도 가능

 Half-Open Range Operator(반폐쇄 범위 연산자)
 - 1  ..<10 (정수 1부터 10미만)
 - ..<10 (정수 10미만)
 - 한 방향은 열리도록 정의하는 것도 가능
 
 패턴 매칭 연산자 (~=) -> 결과 참 또는 거짓
 - 범위연산자와 함께 쓰이는 연산자
 - 앞에 있는 범위에 뒤에 있는 변수가 속하는 지 확인하는 연산자
 
 */




for i in 1...10 {
    print(i)
}

for i in (1...10).reversed() {
    print(i)
}
