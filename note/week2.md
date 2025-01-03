# Swift 학습 노트

## 1. Playground 기초 및 변수와 상수 (Variables & Let constants)

- **Playground**
  - Xcode에서 Playground를 생성하여 Swift 코드를 빠르게 실험해 볼 수 있습니다.
- **변수(var)와 상수(let)**
  - `var greeting: String = "Hello, playground"` : 변수는 값 변경 가능
  - `let likeHumms = "likes humuus"` : 상수는 한 번 선언 후 변경 불가

```swift
var greeting: String = "Hello, playground"
greeting = "Goodbye, playground" // 변수이므로 변경 가능
```

## 2. 문자열, 배열, for 루프 (Strings, Arrays, For Loop)

• 문자열(String)
• 배열(Array)
• for … in 반복문

```swift
let listOfPeople = ["Ron", "Jen", "Sam"]
for name in listOfPeople {
    print("\(name) likes humuus.")
}
```

String Interpolation: "\(변수)"를 사용하여 문자열에 변수를 간단히 삽입

## 3. 구조체와 구조체 배열 (Structs and Arrays of Structs)

**구조체(Struct)** 를 정의하고, 배열을 통해 여러 인스턴스를 관리
• 예시: PersonWithHobby 구조체

```swift
struct PersonWithHobby {
let name: String
let hobby: String
}


let people: [PersonWithHobby] = [
PersonWithHobby(name: "Ron", hobby: "skateboarding"),
// ...
]

for p in people {
print("\(p.name) likes to \(p.hobby)")
}
```

## 4. 옵셔널(Optionals)과 if, if let

• 옵셔널(?): 값이 없을 수도(nil) 있음을 표현 - what is nil ~~ none null
• Optional Binding

```swift
struct PersonWithoptHobby {
let name: String
let hobby: String?
}

if let hobby = p.hobby {
print("\(p.name) likes to \(hobby)")
} else {
print("\(p.name) has no hobby")
}
```

## 5. 자료형 (Int, Double, Float, Type Checking)

• Swift의 다양한 자료형: Int, Double, Float 등
• type(of: 변수)를 사용해 변수 타입 확인 가능
• 최대·최솟값 예시: Int.max, Double.greatestFiniteMagnitude 등

```swift

var b = 100 // Int
var c = 100.0 // Double
var d: Float = 100.0 // Float

print("b의 타입: \(type(of: b))") // Int
print("c의 타입: \(type(of: c))") // Double
print("d의 타입: \(type(of: d))") // Float
```

## 6. 나눗셈, 나머지 연산 (Division, Modulo)

• **정수 나눗셈(10/3)** 과 실수 나눗셈(10.0/3) 차이
• % 연산자를 사용하여 나머지 구하기

```swift
let x = 112
let quotient = x / 5 // 몫
let remainder = x % 5 // 나머지

func divisionAlgorithm(x: Int, divisor: Int) -> String {
let remainder = x % divisor
let quotient = x / divisor
if remainder == 0 {
return "\(x) = \(divisor) _ \(quotient)"
} else {
return "\(x) = \(divisor) _ \(quotient) + \(remainder)"
}
}
```

## 7. 반복문 (for, while, repeat-while)

• for i in -3 ..< 3: 범위 연산자 사용
• while: 조건이 참인 동안 반복
• repeat-while: 최소 한 번 실행

```swift

var sum = 0
var j = 0
while j < 10 {
sum += j
j += 1
}

repeat {
print(j)
j += 1
} while j <= 20
```

## 8. 튜플(Tuple)과 네이밍된 튜플 (Named Tuples)

• 여러 개의 값을 하나의 묶음으로 관리
• 접근 방법: .0, .1로 접근하거나 이름을 통해 접근

```swift
var address = ("123 Main St", "Anytown", "CA", "94901")
print(address.0) // "123 Main St"

var address2 = (name: "123 Main St", street: "Anytown", city: "CA", num: "94901")
print(address2.name) // "123 Main St"
print(address2.street) // "Anytown"

```

## 9. 멀티라인 문자열(Multiline Strings)

• """ """ 구문으로 여러 줄 문자열 표현
• 코드 가독성을 높이고, 긴 텍스트 출력 시 유용

```swift
print("""
Two roads diverged in a yellow wood,
And sorry I could not travel both
...
""")
```

## 10. guard 문 (The Guard Statement)

    • guard (조건) else { ... }
    • 조건이 거짓일 때 빠르게 종료(return)하여 가독성 개선

```swift
func guardExample(expr: Bool, str: String) {
guard expr else {
print("We are here because the expression \(str) was false.")
return
}
print("have a nice day ")
}
```

## 11. 열거형(Enumerations)

    • 연관된 값들을 한곳에 모아 정의
    • switch문과 함께 주로 사용
    • Raw Values: 열거형 케이스에 문자열(또는 숫자) 매핑 가능
    • CaseIterable 프로토콜로 allCases 순회 가능

```swift

enum Direction {
case north, south, east, west
}

switch Direction.east {
case .east:
print("Go East")
case .west:
print("Go West")
case .north:
print("Go North")
case .south:
print("Go South")
}

enum photoNames: String, CaseIterable {
case dog1 = "pexel-puppy-cheerful-dog-1011111.png"
case dog2 = "pexel-puppy-happy-dog-1011112.jpg"
case dog3 = "pexel-puppy-happy-dog-1011113.png"
}

for photo in photoNames.allCases {
print(photo.rawValue)
}
```
