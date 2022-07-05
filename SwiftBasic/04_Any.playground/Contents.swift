/*
    강의명 : iOS 프로그래밍을 위한 스위프트 기초 1-05 Any, AnyObject, nil
    수강일 : 22.07.05
*/

/* 1. Any : Swift의 모든 타입 */
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능"
someAny = 123.12
//let someDouble: Double = someAny // 명시적 타입 변환 필요

/* 2. AnyObject : 모든 클래스 타입을 지칭하는 프로토콜 */
class someClass {}
var someAnyObject: AnyObject = someClass()
//someAnyObject = 123.12 // 오류 -> 클래스 인스턴스만 수용 가능

/* 3. nil : NULL */
// someAny = nil
// someAnyObject = nil
// => 각각 Any, AnyObject 타입이 지정되어있어 nil 불가능
