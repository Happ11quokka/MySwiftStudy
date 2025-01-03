//: [Previous](@previous)

import Foundation

print("let's talks abput daya types.")
print("int,double,float,\"type of\"")
var a:Int = 6
a + a+1
print(a)

a+=200
print(a)
//b is int, c is double
var b = 100
var c = 100.0
print("b=\(b),c=\(c)")

print("the varible 'b' is \(type(of: b))")
print("the varible 'c' is \(type(of: c))")

var d:Float = 100.0
print("the varible 'd' is \(type(of: d))")

print("largest interger is \(Int.max)")
print("smallets interger is \(Int.min)")

print("largest double is \(Double.greatestFiniteMagnitude)")
print("largest double is \(-Double.greatestFiniteMagnitude)")

print("largest Float is \(Float.greatestFiniteMagnitude)")
print("largest Float is \(-Float.greatestFiniteMagnitude)")

//division
print("divison")
print(10/3)
print(10.0/3)
print(10/3.0)
print(10/Double(3))

print("remainder")
let x = 112
let quotient = x/5
let remainder = x%5

print(quotient)
print(remainder)

print("\(x)/= 5 * \(quotient)+\(remainder)")


//x = bq + r
//112 = 5*22 + 2 , r=2, q=22, divisor = 5
for divisor in 1...9{
    let remainder = x%divisor
    let quotient = x/divisor
    if remainder == 0{
        print("\(x)/= * \(divisor) * \(quotient)")
    }
    print("\(x)/= * \(divisor) * \(quotient)+\(remainder)")
}


func divisionAlgorithm(x:Int, divisor: Int) -> String{
    let result: String
    let remainder = x%divisor
    let quotient = x/divisor
    if remainder == 0{
        result = "\(x)/= * \(divisor) * \(quotient)"
    }else{
        result = "\(x)/= * \(divisor) * \(quotient)+\(remainder)"
    }
    
    return result
}

for divisor in 1...9{
    print(divisionAlgorithm(x: 112, divisor: divisor))
    
}

for i in -3..<3{
    print(i)
}

print("")
for i in -3...3{
    print(i)
}


//: [Next](@next)


var sum = 0
var j = 0
//while loop
while j<10{
    sum = sum + j
    j += 1
    
}
print(sum)

//do-while loop
var i = 1
let n = 10

repeat {
    print(i)
    i += 1
} while (i <= n)



