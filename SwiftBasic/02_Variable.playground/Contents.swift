/*
    강의명 : iOS 프로그래밍을 위한 스위프트 기초 1-03 상수와 변수
    수강일 : 22.07.04
*/

// 상수 선언
// let 이름: 타입 = 값

// 변수 선언 var
// var 이름: 타입 = 값

// 값의 타입이 명확하다면 타입은 생략 가능
// let 이름 = 값
// var 이름 = 값

let constant: String = "차후에 변경이 불가능한 상수 let"
var variable: String = "차후에 변경이 가능한 상수 var"

variable = "변수는 이렇게 차후에 다른 값을 할당할 수 있지만"
//constant = "상수는 오류"
// 따라서 상수 선언 후 나중에 값 할당하기!

// 나중에 할당하려고 하는 상수나 변수는 타입을 반드시 명시해야함
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

// 선언 후 첫 할당
sum = inputA + inputB
// sum = 1 // 이후 변경 불가

var nickName: String
nickName = "debby"
print(nickName)

nickName = "byukbyak"
print(nickName)
