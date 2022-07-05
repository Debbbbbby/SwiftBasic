/*
    강의명 : iOS 프로그래밍을 위한 스위프트 기초 1-04 기본 데이터 타입
    수강일 : 22.07.04
*/

import UIKit

// Swift의 기본 데이터 타입
// Bool, Int, UInt, Float, Double, Character, String

// Bool
var someBool: Bool = true
someBool = false
//someBool = 0 // Int로 인식해서 오류
//someBool = 1

// Int : 64비트 정수형
var someInt: Int = -100
//someInt = 100.1 // 오류

// UInt : 64비트 양의 정수형
var someUInt: UInt = 100
//someUInt = -100 // 오류
//someUInt = someInt // 오류

// Float
var someFloat: Float = 3.14
someFloat = 3

// Double
var someDouble: Double = 3.14
someDouble = 3
//someDouble = someFloat // 오류

// Character
var someCharacter: Character = "🍑"
someCharacter = "가"
someCharacter = "A"
//someCharacter: Character = "하하하" // 오류
print(someCharacter)

// String
var someString: String = "하하하 😁"
someString = someString + " 웃으면 복이와요"
print(someString)
