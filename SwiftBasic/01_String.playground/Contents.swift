/*
    강의명 : iOS 프로그래밍을 위한 스위프트 기초 1-02 명명법 / 콘솔로그 / 문자열 보간법
    수강일 : 22.07.04
*/

let age: Int = 10

"안녕하세요! 저는 \(age)살 입니다"
// == "안녕하세요! 저는 10살 입니다"

"안녕하세요! 저는 \(age+5)살 입니다"
// == "안녕하세요! 저는 15살 입니다"

print("안녕하세요! 저는 \(age+5)살 입니다")
print("\n----------------------------\n")

class Person {
    var name: String = "debby"
    var age: Int = 10
}

let debby: Person = Person()

print(debby)
// == __lldb_expr_19.Person
print("\n----------------------------\n")
dump(debby)
/*
    ▿ __lldb_expr_19.Person #0
      - name: "debby"
      - age: 10
*/
