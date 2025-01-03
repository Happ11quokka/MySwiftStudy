import Foundation

// examples of enumerations
func printXY(x: Double, y: Double) {
    print("\(x), \(y)")
}

// CGPoint
func printXY(point: CGPoint) {
    let x = point.x
    let y = point.y
    print("\(x), \(y)")
}

enum Direction {
    case north, south, east, west
}

var x = 0.0
var y = 0.0
let delta = 5.0
var direction1 = Direction.east
var direction2 = Direction.north
var directions: [Direction] = [
    .north, .north, .east, .west, .east
]

printXY(x: x, y: y)
switch direction1 {
case .east:
    x += delta
case .west:
    x -= delta
case .north:
    y += delta
case .south:
    y -= delta
}

printXY(point: CGPoint(x: x, y: y))

func updatePosition(direction: Direction, point: CGPoint) -> CGPoint {
    var x = point.x
    var y = point.y
    switch direction {
    case .east:
        x += delta
    case .west:
        x -= delta
    case .north:
        y += delta
    case .south:
        y -= delta
    }
    return CGPoint(x: x, y: y)
}

print("Let's follow some directions")
var thePoint = CGPoint(x: 0, y: 0)
printXY(point: thePoint)
for direction in directions {
    thePoint = updatePosition(direction: direction, point: thePoint)
    printXY(point: thePoint)
}

// Named cases. Raw values
enum photoNames: String, CaseIterable { // Fix: Changed `string` to `String`
    case dog1 = "pexel-puppy-cheerful-dog-1011111.png"
    case dog2 = "pexel-puppy-happy-dog-1011112.jpg"
    case dog3 = "pexel-puppy-happy-dog-1011113.png"
}

print("The filename for \(photoNames.dog1.rawValue) is \(photoNames.dog1.rawValue)")

print("")

for photo in photoNames.allCases {
    print("The filename for \(photo.rawValue) is \(photo.rawValue)")
}
