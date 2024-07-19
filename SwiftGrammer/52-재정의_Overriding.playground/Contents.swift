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
 - 저장속성만 재정의가 볼가능하다
 - 속성과 메서드 재정의 방식이 다름 == 메모리 구조가 다름
 
 */

class Aclass {
    func doSomething() {
        print("Do something")
    }
}

class Bclass: Aclass {
    override func doSomething() {
        super.doSomething()     // 상위 클래스 메서드 실행
        print("hello swift")
    }
}

let test = Bclass()
test.doSomething()
