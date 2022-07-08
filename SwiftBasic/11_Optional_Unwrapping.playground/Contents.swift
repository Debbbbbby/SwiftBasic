/*
    강의명 : iOS 프로그래밍을 위한 스위프트 기초 1-12 옵셔널 추출
    수강일 : 22.07.08
*/

// 1. 옵셔널 추출이란 : 옵셔널에 들어있는 값을 사용하기 위해 꺼내오는 것

// 2. 옵셔널 방식
/*
    1) 옵셔널 바인딩
        - nil 체크 + 안전한 추출
        - 옵셔널 안에 값이 들어있는지 확인하고 값이 있으면 값을 꺼내온다.
        - if-let 방식 사용
*/

func printName(_ name: String) { // _이 언더바는 뭐지?
    print(name)
}

var myName: String? = nil

// printName(myName)
// 전달되는 값의 타입이 다르기 때문에 컴파일 오류발생

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}

var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else {
    print("yourName == nil")
}

// name 상수는 if-let 구문 내에서만 사용 가능
//printName(name) // 상수 사용범위를 벗어나 컴파일 오류

// , 를 사용해 한번에 여러 옵셔널을 바인딩 할 수 있다.
// 모든 옵셔널에 값이 있을 때에만 동작한다.
myName = "debby"
yourName = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// yourName이 nil이라서 실행 안됨

yourName = "winter"

//if let name = myName, let friend = yourName {
//    print("\(name) and \(friend)")
//}

/*
    2) 강제 추출
        - 옵셔널에 값의 여부와는 상관없이 강제로 추출하는 방식
        - 만약 값이 없을경우 런타임 오류가 발생하기 때문에 비추천
*/

var myName2: String? = "debby"
var yourName2: String! = nil

printName(myName2!)
myName2 = nil
//print(myName2!) // 강제 추출시 값이 없어 런타임 오류

yourName2 = nil
//printName(yourName2) // nil 값이 전달되어 런타임 오류
