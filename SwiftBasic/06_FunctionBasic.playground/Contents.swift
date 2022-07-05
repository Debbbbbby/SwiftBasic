/*
    강의명 : iOS 프로그래밍을 위한 스위프트 기초 1-07 함수 기본
    수강일 : 22.07.05
*/

/* 1. 함수선언의 기본형태 */
/* func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름:매개변수2타입) -> 반환타입 {
        // 함수 구현부
        return 반환값
}*/

func sum(a: Int, b: Int) -> Int {
    return a + b
}

/* 2. 반환 값이 없는 함수 */
/* func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름:매개변수2타입) -> Void {
        // 함수 구현부
        return 반환값
}*/

func printMyName(name: String) -> Void {
    print(name)
}

func printYourName(name: String) { // 생략 가능
    print(name)
}

/* 3. 매개변수가 없는 함수 */
/* func 함수이름() -> 반환타입 {
        // 함수 구현부
        return 반환값
}*/
func maximumInteger() -> Int {
    return Int.max
}

/* 4. 매개변수와 반환값이 없는 함수 */
/* func 함수이름() -> Void {
        // 함수 구현부
}*/

func hello() -> Void { print("hello") } // 짧으면 한줄 가능
func bye() { print("bye") } // Void 생략 가능

/* 5. 함수의 호출 */
sum(a: 3, b: 5)
printMyName(name: "debby")
printYourName(name: "byukbyak")
print(maximumInteger())
hello()
bye()
