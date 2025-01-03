# Swift Programming Notes: Functions and Closures

## Functions

함수는 코드를 모듈화하고 재사용하기 위한 기본적인 구조입니다. Swift에서 함수는 특정 작업을 수행하는 코드 블록으로, 매개변수를 통해 입력을 받고 결과를 반환할 수 있습니다.

### Basic Function Example

간단한 인사 함수를 정의하고 호출하는 예입니다.

```swift
func greet(name: String, greeting: String) -> String {
    return "\(greeting), \(name)"
}
print(greet(name: "Ron", greeting: "How are you"))
```

### Variadic Parameters

가변 매개변수를 사용하여 여러 숫자의 합을 계산하는 함수입니다.

```swift
func sum(numbers: Double...) -> Double {
    var sum = 0.0
    for number in numbers {
        sum += number
    }
    return sum
}
print(sum(numbers: 1, 2, 3, 4, 5))
```

### Inout Parameters

inout 매개변수를 사용하여 함수 외부의 변수 값들을 직접 변경하는 예제입니다.

```swift
func swap(a: inout Int, b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var num1 = 13
var num2 = 23
swap(a: &num1, b: &num2)
print("num1: \(num1), num2: \(num2)")
```

### Precautions

    •	inout 매개변수는 함수 외부의 변수를 직접 변경하므로 부작용을 일으킬 수 있습니다. 이로 인해 프로그램의 흐름이 예상치 못하게 변경될 수 있으므로 사용에 주의가 필요합니다.
    •	가변 매개변수를 사용할 때는 함수 호출 시 전달하는 인자의 개수에 주의해야 합니다.

## Closures

클로저는 이름 없이 독립적으로 존재할 수 있는 코드 블록입니다. 클로저는 주변의 변수를 캡처할 수 있고, 함수처럼 매개변수를 받고 값을 반환할 수 있습니다.

### Basic Closures Usage

함수를 변수처럼 사용하거나 다른 함수의 인자로 사용할 수 있습니다.

```swift
let addClosure = { (a: Int, b: Int) -> Int in
    a + b
}
print(addClosure(1, 2))

let simpleClosure = {
    print("Hello")
}
simpleClosure()
```

### Using Closures with Functions

클로저를 매개변수로 받는 함수의 예시입니다.

```swift

func mathOp(a: Int, b: Int, fn: (Int, Int) -> Int) -> Int {
    return fn(a, b)
}

print(mathOp(a: 1, b: 2, fn: add))  // 덧셈
print(mathOp(a: 1, b: 2, fn: multiply))  // 곱셈

// Trailing Closure
print(mathOp(a: 5, b: 2) { (a, b) in
    a + b - a * b + 1
})
```

### Precautions

    •	클로저는 주변의 변수를 캡처할 때 강한 참조를 생성할 수 있으므로, 메모리 누수를 일으킬 수 있습니다. 이를 방지하기 위해 캡처 목록에서 weak 또는 unowned 키워드를 사용할 수 있습니다.
    •	클로저 내부에서 self를 참조할 때는 메모리 누수를 방지하기 위해 weak self를 사용하는 것이 좋습니다.
