/*
 
 (136강)
 메서드 디스패치
 코드, 데이터, 힙, 스틱
 
 메서드
 - cpu에 대한 명령어인데 그 코드들은 실제로 코드 영역에만 존재한다
 - 그 코드 영역에 있는 이미 저장되어 있는 함수 또는 메서드 실행시키려면 메서드 주소가 필요하다
 - 그 메서드 주소를 기억하고 실행시킬때 어떤 메서드를 실행시킬지에 관련된 내용
 - 스위프트가 함수를 실행시키는 방법(3가지 방법을 모두 사용)
 
 1) direct(static) dispatch (compile time)
 - 캄파일 타임에 일어난다(우리가 짠 코드를 컴퓨터가 0101로 해석)-> 메서드의 메모리주소를 바로 인식
 - 함수의 명령 코드를 해당 위치에 복사해서 넣어버린다
 - 코드 영역에 명령어들이 있는데 이들을 묶은것 = 함수나 메서드 라고 한다
 - 명령어가 시작되는 부분에 즉 특정 90번째 메모리 주소에 함수가 들어 있는 것이다
 - 함수 실행을 시킬려면 90번째 메모리 주소를 기억 하고 있어야 한다
 - 아주 빠르게 동작시키는방법: 90번쨰 메모리에 있는 함수 즉 명령어묶음을 해당 위치에 복사해서 넣어버린다(inline이라고함)
 - value타입(구조체, 열거형)에 사용
 - 상속/다형성 누릴 수 없음
 
 실제로 앱이 실행되고 있는동안 메모리 주소를 찾아가서 실행시키는 방식
 2) table dispatch (run time)
 - objective-c에서 쓰이는 방법
 
 
 
 
 value 타입
 - 다이렉트 디스패치방식으로 동작
 - 이유: 상속구조가 없어서 굳이 테이블을 만들 이유가 없다
        상속이 있을때만 메서드를 재정의하고 테이블을 만들 필요가 있다
 

 
 */
