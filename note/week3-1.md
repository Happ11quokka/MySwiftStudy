# Swift Programming Notes

## 1. Arithmetic Operations

Swift에서의 기본 산술 연산을 보여줍니다.

```swift
// 덧셈 함수 정의
func add(_ x: Int, _ y: Int) -> String {
    return ("\(x) + \(y) = \(x + y)")
}

// 함수 사용 예
print("Arithmetic Demo")
print(add(2, 3))

var x = 2
var y = 3
print("\(x) + \(y) = \(x + y)")

x = 5
y = 7
print("\(x) + \(y) = \(x + y)")

```

## 2. Compound Operators

복합 연산자의 사용 예시를 다룹니다.

```swift
print("compound operators")

var z = 5
print(z)
z += 5
print(z)
z -= 5
print(z)
z \*= 5
print(z)
z /= 5
print(z)
```

## 3. Strings

문자열 관련 여러 기능을 설명합니다.

```swift
let quote = "Learn from \n yesterday, \n live for today, \n and laugh at tomorrow"
print(quote)

let multilineQuote = """
\tLearn from
yesterday,
Live for today,
Hope for
tomorrow
"""
print(multilineQuote)

let einsteinQuote = "\" Learn from \n yesterday, \n live for today, \n and laugh at tomorrow \" - Danny"
print(einsteinQuote)

let encodedQuoteRaw = #""Learn from yesterday, live for today, and laugh at tomorrow" - Danny"#
print(encodedQuoteRaw)

print(einsteinQuote == encodedQuoteRaw)
```

## 4. Collections

### Arrays

배열의 생성과 사용에 대한 예시입니다.

```swift
var favoriteNumbers: [Double] = [7.0, sqrt(2), Double.pi]
print(favoriteNumbers)

var manyZeros = Array(repeating: 0, count: 10)
var lotsOfHummus = Array(repeating: "Hummus", count: 10)
print(manyZeros)
print(lotsOfHummus)
```

### Sets

집합의 기본적인 사용을 보여줍니다.

```swift
var setOfNumbers: Set<Int> = [1, 2, 3, 4, 5]
print(setOfNumbers)

setOfNumbers.insert(6)
print(setOfNumbers)

setOfNumbers.remove(6)

var fruits: Set<String> = ["apple", "banana", "orange"]
print(fruits)
```

### Dictionaries

사전 사용의 기본 예시입니다.

```swift
var foodCalories: [String: Int] = [:]
foodCalories["apple"] = 100
foodCalories["banana"] = 200
foodCalories["orange"] = 300
print(foodCalories)

if let calories = foodCalories["orange"] {
print("orange has \(calories) calories")
} else {
print("orange is not in the dictionary")
}
```

## 5. Control Flow

### Loops

반복문 사용의 예시입니다.

```swift
for i in 1...10 {
print(i)
}

let data = ["tree", "house", "car"]
for item in data {
print(item)
}
```

### Conditionals

조건문의 사용을 설명합니다.

```swift
let hourSlept = 8
if hourSlept <= 6 {
print("I am not happy")
} else if hourSlept > 6 && hourSlept <= 10 {
print("I am great")
} else {
print("Slept too much")
}
```

### if expressions

ternary conditional operator (삼항 조건 연산자)를 사용하여 if-else 로직을 한 줄의 코드로 축약하는 방법을 제시

```swift
let hourSlept = 8 // 이 값은 예시를 위해 설정한 것이며, 실제 환경에서는 사용자 입력 또는 계산된 값일 수 있습니다.

let happiness: String = hourSlept <= 6 ? "I am not happy because I slept for \(hourSlept) hours." :
                        hourSlept <= 10 ? "I am great because I slept for \(hourSlept) hours." :
                        "Slept too much."

print(happiness)

```
