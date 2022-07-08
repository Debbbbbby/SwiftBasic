/*
    강의명 : iOS 프로그래밍을 위한 스위프트 기초 1-09 조건문
    수강일 : 22.07.07
*/

/* 1. for-in 구문 */

/*  << 예시 >>
    for item in items {
        /* 실행 구문 */
    }
*/

var integers = [1, 2, 3]
let people = ["debby": 10, "bibi": 15, "jenny": 17]

for integer in integers {
    print(integer)
}

// Dictionary의 item은 key, value로 구성된 튜플 타입
for (name, age) in people {
    print("\(name): \(age)")
}

/* 2. while */

/*  << 예시 >>
    while 조건 {
        /* 실행 구문 */
    }
*/

while integers.count > 1 {
    print(integers)
    integers.removeLast()
}

/* 3. repeat-while 구문 */

/*  << 예시 >>
    repeat {
        /* 실행 구문 */
    } while 조건
*/

repeat {
    integers.removeLast()
    print(integers)
} while integers.count > 0
