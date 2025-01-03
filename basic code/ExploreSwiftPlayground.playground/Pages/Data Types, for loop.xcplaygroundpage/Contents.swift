//: [Previous](@previous)

import Foundation

print("Let's talk about primitive data types.")
var a: Int = 6
print(a)
a = a + 1
print(a)
a += 1
print(a)

var b = 100
var c = 100.0
print("Type of 'b' is \(type(of: b)).")
print("Type of 'c' is \(type(of: c)).")

var d: Float = 100.0
print("Type of 'd' is \(type(of: d)).")

print("Largest integer is \(Int.max) and the smallest is \(Int.min).")

print("Largest Double is \(Double.greatestFiniteMagnitude) and the smallest is \(-Double.greatestFiniteMagnitude).")

print("Largest Float is \(Float.greatestFiniteMagnitude) and the smallest is \(-Float.greatestFiniteMagnitude).")

// Division
print("Division")
print(7 / 2)
print(7.0 / 2)
print(7 / 2.0)
print(7 / Double(2))

let x = 112
let quotient = x / 5
let remainder = x % 5

print("\(x) = 5 * \(quotient) + \(remainder)")

// x = bq + r    r = remainder, q = quotient
// 112 = 5*22 + 2     r = 2, q = 22, divisor = 5
//for divisor in 1..<10 {
//    let remainder = x % divisor
//    let quotient = x / divisor
//    if remainder == 0 {
//        print("\(x) = \(divisor) * \(quotient)")
//    } else {
//        print("\(x) = \(divisor) * \(quotient) + \(remainder)")
//    }
//}

func divisionAlgorithm(x: Int, divisor: Int) -> String {
    let result: String
    let remainder = x % divisor
    let quotient = x / divisor
    if remainder == 0 {
        result = "\(x) = \(divisor) * \(quotient)"
    } else {
        result = "\(x) = \(divisor) * \(quotient) + \(remainder)"
    }

    return result
}

for divisor in 1..<9 {
    print(divisionAlgorithm( x: 112, divisor: divisor))
}

//: [Next](@next)
