/*
    강의명 : iOS 프로그래밍을 위한 스위프트 기초 1-08 함수 고급
    수강일 : 22.07.05
*/

/* 1. 매개변수 기본 값 */
/* func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름:매개변수2타입 = 매개변수 기본값 .. ) -> 반환타입 {
        // 함수 구현부
        return 반환값
}*/

func greeting(friend: String, me: String = "debby") {
    print("Hello \(friend)! I'm \(me)")
}

greeting(friend: "byukkyak")
greeting(friend: "byukkyak", me: "yagom")

/* 2. 전달인자 레이블(Argument Label) */
/* func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 매개변수2이름:매개변수2타입 .. ) -> 반환타입 {
        // 함수 구현부
        return 반환값
}*/

func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

// 함수 호출시 전달인자 레이블 사용
greeting(to: "byukkyak", from: "debby")

/* 3. 가변 매개변수 */
/* func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름:매개변수2타입 .. ) -> 반환타입 {
        // 함수 구현부
        return 반환값
}*/

func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}

print(sayHelloToFriends(me: "debby", friends: "chu", "Eugenie", "byukbyak"))
print(sayHelloToFriends(me: "debby"))

/* 4. 데이터 타입으로서의 함수 */
//(매개변수1타입, 매개변수2타입 ...) -> 반환타입

var someFunc: (String, String) -> Void = greeting(to:from:)
someFunc("bibi", "debby")

someFunc = greeting(friend:me:)
someFunc("bebe", "debby")

// 타입이 다른 함수는 할당할 수 없다, 컴파일 오류 발생
// someFunc = sayHelloToFriends(me:friend:)

func runAnother(function: (String, String) -> Void) {
    function("jenny", "lisa")
}

runAnother(function: greeting(friend:me:))
runAnother(function: someFunc)
