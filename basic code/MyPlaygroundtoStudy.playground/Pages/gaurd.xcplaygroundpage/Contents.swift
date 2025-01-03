//: [Previous](@previous)

import Foundation

let x1: Bool = true
let x2: Bool = false

func guardExample(expr: Bool, str: String) {
    guard (expr) else{ // execute this closure if expr == false
        print("We are here because the expression \(str) was false.")
        
        return
    }
    
    print("have a nice day ")
}

guardExample(expr: x1, str: "x1") // true
guardExample(expr: x2, str: "x2")
guardExample(expr: 1+1 == 3, str: "1+1 == 3")
guardExample(expr: 1+1 == 2, str: "1+1 == 2")//true


print("\n\n In other words guard ...else only executes if the expression is false.")

//: [Next](@next)
