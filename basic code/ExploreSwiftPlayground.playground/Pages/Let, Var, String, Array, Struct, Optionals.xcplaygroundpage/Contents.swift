import UIKit

// Our first function
func printDashes() {
    print("----------------")
}


// variables are mutable
// let constants are immutable
var greeting = "Hello, playground"
let likeHummus = "likes Hummus"
print(greeting)

greeting = "likes Hummus"

print(greeting)

greeting = "Ron " + greeting

print(greeting)

var name = "Ron"
greeting = name + " " + likeHummus

print(greeting)

let listOfPeople = ["Ron","Jane","Bob"]

printDashes()
for name in listOfPeople {
    // String interpolation
    print("\(name) \(likeHummus).")
}

printDashes()
greeting = "\(name) likes to skateboard."
print(greeting)

let names: [String] = [
"Ron","Elmo","cookie","big bird","grover","oscar"
]

for name in names {
    print("\(name) likes to skateboard.")
}

/*
 Is it really true that everybody likes to skateboard?
 Perhaps we should consider people and their hobbies.
 Introduce structs...
 */
struct PersonWithHobby {
    let name: String
    let hobby: String
}

let people: [PersonWithHobby] = [
PersonWithHobby(
    name: "ron",
    hobby: "skateboard"),
PersonWithHobby(
    name: "Elmo",
    hobby: "program"),
PersonWithHobby(
    name: "cookie",
    hobby: "bake"),
PersonWithHobby(
    name: "big bird",
    hobby: "fly"),
PersonWithHobby(
    name: "grover",
    hobby: ""),
PersonWithHobby(
    name: "oscar",
    hobby: "")
]

printDashes()

for p in people {
    print("\(p.name.capitalized) likes to \(p.hobby).")
}


// Introduce optionals
// [1,2,10,50,7,-3]

var x: Int = 7
var y: Int? = 10

x = 12345
y = 12345
y = -18
y = nil

// Billion dollar error
/*
 https://en.wikipedia.org/wiki/Tony_Hoare#:~:text=Speaking%20at%20a%20software%20conference,oriented%20language%20(ALGOL%20W).
 */


struct PersonWithOptHobby {
    let name: String
    let hobby: String?
}

let people2: [PersonWithOptHobby] = [
    PersonWithOptHobby(
    name: "ron",
    hobby: "skateboard"),
    PersonWithOptHobby(
    name: "Elmo",
    hobby: "program"),
    PersonWithOptHobby(
    name: "cookie",
    hobby: "bake"),
    PersonWithOptHobby(
    name: "big bird",
    hobby: "fly"),
    PersonWithOptHobby(
    name: "grover",
    hobby: nil),
    PersonWithOptHobby(
    name: "oscar",
    hobby: nil)
]

for p in people2 {
    if p.hobby == nil {
        print("\(p.name) has no hobby.")
    } else {
        print("\(p.name.capitalized) likes to \(String(describing: p.hobby)).")

    }
}
printDashes()

for p in people2 {
    if let hobby = p.hobby {
        // Executed if p.hobby != nil
        print("\(p.name.capitalized) likes to \(hobby).")
    } else {
        print("\(p.name.capitalized) has no hobby.")
    }
}


