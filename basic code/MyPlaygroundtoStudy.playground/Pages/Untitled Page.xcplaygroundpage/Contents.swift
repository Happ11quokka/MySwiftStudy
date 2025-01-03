import UIKit

//our first function
func printDash(){
    print("-------------------------")
}


//variables are mutable
// let constants are immuateble

var greeting: String = "Hello, playground"
let likeHumms = "likes humuus"
var count: Int = 0


print(greeting)

greeting = "Goodbye, playground"

print(greeting)

greeting = "Ron" + greeting

print(greeting)

print("---------------------------------------")

var name = "Ron"
greeting = name + " " + likeHumms
print(greeting)

let listOfPeople = ["Ron", "Jen", "Sam"]

for name in listOfPeople {
    greeting = name + " " + likeHumms
    //String interpolation
    greeting = "\(name) \(likeHumms). "
    print(greeting)
}


print("---------------------------------------")

//ron run -> this name is not accessed in for loop below
greeting = "\(name) likes to skateboard."
print(greeting)

//just string will be error
let names: [String] = [
    "Ron", "Jen", "Sam", "connie"
]

for name in names {
    print("\(name) likes to skateboard.")
}


print("---------------------------------------")

/*
 IS it really true that everybody likes to skateboard?
 Perhaps we should consider peopel and their hobbies.
 Introduce stacuts...
 */
struct PersonWithHobby {
    let name:String
    let hobby:String
    
}

let peopel: [PersonWithHobby] = [
    PersonWithHobby(name: "Ron", hobby: "skateboarding"),
    PersonWithHobby(name: "Son", hobby: "skateboarding"),
    PersonWithHobby(name: "Elmo", hobby: "skateboarding"),
    PersonWithHobby(name: "pie", hobby: "network"),
    PersonWithHobby(name: "overflow", hobby: "building")


]

printDash()

for p in peopel {
    print("\(p.name.uppercased()) likes to \(p.hobby)")
}



printDash()


//intrudroduce optionals
// [1,2,3,10,50,7,-3]

var x: Int = 7

var y: Int? = 10

x = 100
y = nil


struct PersonWithoptHobby {
    let name:String
    let hobby:String?
    
}

let optpeopel: [PersonWithoptHobby] = [
    PersonWithoptHobby(name: "Ron", hobby: "skateboarding"),
    PersonWithoptHobby(name: "Son", hobby: "skateboarding"),
    PersonWithoptHobby(name: "Elmo", hobby: "skateboarding"),
    PersonWithoptHobby(name: "pie", hobby: nil),
    PersonWithoptHobby(name: "overflow", hobby: "building")
]


for p in optpeopel {
    if p.hobby == nil {
        print("\(p.name) has no hobby")
    }
    else {
        print("\(p.name) likes to \(p.hobby)")
    }
}


printDash()

for p in optpeopel {
    if let hobby = p.hobby{
        //executed if [.hobbby != nil
        print("\(p.name) likes to \(hobby)")

    }
    else {
        print("\(p.name) has no hobby")

    }
}



printDash()


