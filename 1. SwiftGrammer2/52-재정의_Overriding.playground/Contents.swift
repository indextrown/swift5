/*
 
 (105강)
 오버로딩
 - 함수에서 함수의 하나의 이름에 여러 함수를 대응시켜서 사용
 
 오버라이딩
 - 클래스의 상속에서 상위클래스의 속성/메서드를 재정의(기능을 약간 변형하여 사용)하는 것
 
 재정의
 - 서브클래스에서 슈퍼클래스의 동일한 멤버를 변형하여 구현
 - 동일한 이름을 가진 메서드를 약간 변형시켜서 사용하는 것
 
 재정의가 가능한 대상(멤버)
 - 1) 속성(하지만 저장 속성에 대한 재정의는 메모리 구조에 의해 어떠한 경우에도 불가능)
 -> 저장속성은 상속하더라도 하위에서 값을 변경 못함
 - 2) 메서드(메서드, 서브스크립트, 생성자)
 
 정리
 - 저장속성만 재정의가 절대 볼가능하다 -> 상위에 있는 데이터 구조는 하위에서 변형 불가
 - 속성과 메서드 재정의 방식이 다름 == 메모리 구조가 다름
 - 상속은 저장속성을 추가하는 개념이다
 - 상속시 메서드는?
 - 상속시 저장속성은 상위 저장속성을 가리킨다, 새로운 저장속성을 저장하기만한다->재정의불가능
 - 클래스에서 상위에 있는 메모리 구조를 건들 수 없다
 - 저장속성에 관련된 것은 추가만 가능하고 재정의는 불가능하다
 
 메서드
 - 상위를 가리키는 구조가 아니라 항상 배열로 존재한다
 
 
 
 */

class Aclass {
    func doSomething() {
        print("Do something")
    }
}

class Bclass: Aclass {
    // 재정의
    // 상위 구현을 아예 무시하고 변형시켜서 사용
    override func doSomething() {
        super.doSomething()     // 상위 클래스 메서드 실행
        print("hello swift")
    }
}

let test = Bclass()
test.doSomething()
