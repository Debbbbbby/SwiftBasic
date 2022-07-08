/*
    강의명 : iOS 프로그래밍을 위한 스위프트 기초 1-11 옵셔널
    수강일 : 22.07.08
*/

// 1. 옵셔널이란? : nil일 수도 있는지 표현

// someOptionalParam 에 nil이 할당될 수 있다.
func someFunc(someOptionalParam: Int?) {
    // ....
}

// someOptionalParam 에 nil이 할당될 수 없다.
func someFunc(someOptionalParam: Int) {
    // ....
}

someFunc(someOptionalParam: nil)
// (someParam: nil)


// 2. 옵셔널을 쓰는 이유
/*
    1) 명시적 표현
        - nil의 가능성을 코드만으로 표현 가능
        - 문서/주석 작성 시간 절약
    2) 안전한 사용
        - 전달받은 값이 옵셔널이 아니라면 nil 체크를 하지 않고 사용가능
        - 예외 상황을 최소화
        - 효율적 코딩
*/

// 3. 옵셔널 문법과 선언

//enum Optional<Wrapped>: ExpressibleByNilLiteral {
//    case none
//    case some(Wrapped)
//}

//let optionalValue: Optional<Int> = nil
//let optionalValue: Int? = nil


// 1) 느낌표(!)를 이용한 암시적 추출 옵셔널

// Implicitly Unwrapped Optional
var implictlyUnwrappedOptionalValue: Int! = 100

switch implictlyUnwrappedOptionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// 기존 변수처럼 사용 가능
implictlyUnwrappedOptionalValue = implictlyUnwrappedOptionalValue + 1

// nil 할당 가능
implictlyUnwrappedOptionalValue = nil

// 잘못된 접근으로 인한 런타임 오류 발생 : nil을 할당한 후에는 기존 변수처럼 사용 불가능
//implictlyUnwrappedOptionalValue = implictlyUnwrappedOptionalValue + 1


// 2) 물음표(?)를 이용한 옵셔널

var optionalValue: Int? = 100

switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// nil 할당 가능
optionalValue = nil

// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산 불가
//optionalValue = optionalValue + 1
