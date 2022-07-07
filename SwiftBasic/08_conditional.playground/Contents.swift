/*
    강의명 : iOS 프로그래밍을 위한 스위프트 기초 1-09 조건문
    수강일 : 22.07.07
*/

/* 1. if-else */

if 조건 /* Bool 타입 */ {
    /* 실행 구문 */
} else if {
    /* 실행 구문 */
} else if {
    /* 실행 구문 */
}

let someInteger = 100

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
}

/* 2. switch */

switch 비교값 {
case 패턴:
    /* 실행 구문 */
default:
    /* 실행 구문 */
}

switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

switch "debby" {
case "lisa":
    print("lisa")
case "jenny":
    print("jenny")
case "jisoo":
    print("jisoo")
case "debby":
    print("zero")
default:
    print("unknown")
}
