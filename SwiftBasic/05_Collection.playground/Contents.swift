/*
    강의명 : iOS 프로그래밍을 위한 스위프트 기초 1-06 컬렉션 타입
    수강일 : 22.07.05
*/

/* 1-1. Array 선언 */
var integers: Array<Int> = Array<Int>()

/*
    << 위와 동일한 표현 >>
    var integers: Array<Int> = [Int]()
    var integers: Array<Int> = []
    var integers: [Int] = Array<Int>()
    var integers: [Int] = [Int]()
    var integers: [Int] = []
    var integers = [Int]()
*/

/* 1-2. Array 활용 */
integers.append(1)
integers.append(100)
//Integers.append(100.1) // not Int

print(integers) // [1, 100]

// 멤버 포함 여부 확인
print(integers.contains(100)) // true
print(integers.contains(99)) // false

// 멤버 교체
integers[0] = 99

// 멤버 삭제
integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

// 멤버 수 확인
print(integers.count)

// 인덱스를 벗어난 접근시 익셉션 런타임 오류
//integers[0]

/* 1-3. 불변 Array: let */
let immutableArray = [1, 2, 3]

//immutableArray.append(4)
//immutableArray.removeAll()

/* 2-1. Dictionary 선언 */
var anyDic: Dictionary<String, Any> = [String: Any]()

/*
    << 위와 동일한 표현 >>
    var anyDic: Dictionary<String, Any> = Dictionary<String, Any>()
    var anyDic: Dictionary<String, Any> = [:]
    var anyDic: [String: Any] = Dictionary<String, Any>()
    var anyDic: [String: Any] = [String: Any]
    var anyDic: [String: Any] = [:]
    var anyDic = [String: Any]()
*/

/* 2-2. Dictionary 활용 */
// 키에 해당하는 값 할당
anyDic["key1"] = "value"
anyDic["key2"] = 100
print(anyDic) // ["key1": "value", "key2": 100]

// 키에 해당하는 값 변경
anyDic["key1"] = "dictionary"
print(anyDic) // ["key2": 100, "key1": "dictionary"]

// 키에 해당하는 값 제거
anyDic.removeValue(forKey: "anotherKey")
anyDic["key2"] = nil
print(anyDic)

/* 2-3. 불변 Dictionary: let */
let empthDic: [String: String] = [:]
let initalizedDic: [String: String] = ["name":"debyy", "gender":"female"]

//empthDic["key"] = "value"

// 키에 해당하는 값을 다른 변수나 상수에 할당하고자 할 때는 옵셔널과 타입 캐스팅
// "name"이라는 키에 해당하는 값이 없을 수 있으므로 String 타입의 값이 나올 것이라는 보장이 없다.
// let someValue: String = initalizedDic["name"]

/* 3-1. Set 생성 */
var integerSet: Set<Int> = Set<Int>()

// insert: 새로운 멤버 입력, 중복 안됨
integerSet.insert(1)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(100)

print(integerSet) // [1, 100, 99]

// contains: 멤버 포함 여부 확인
print(integerSet.contains(1)) // true
print(integerSet.contains(2)) // flase

// remove: 멤버 삭제
integerSet.remove(99) // {100, 1}
integerSet.removeFirst() // {1}

// count: 멤버 개수
integerSet.count // 1

/* 3-2. Set 활용 */
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// 합집합
let union: Set<Int> = setA.union(setB)

// 합집합 오름차순 정렬
let sortedUnion: [Int] = union.sorted()

// 교집합
let intersection: Set<Int> = setA.intersection(setB)

// 교집합 오름차순 정렬
let subtracting: Set<Int> = setA.subtracting(setB)
