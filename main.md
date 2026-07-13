# Swift Notes

### Variable Declaration and Data Types in Swift

```swift
var name1 = "John Doe" // declaring a immutable variable of type String 
let age1 = 30 // declaring a constant variable of type Int. Immutable and cannot be changed
```

### Variable declaration with type annotation

```swift
var name2: String = "John Doe" 
var age2: Int = 30 // declaring a variable of type Int with type annotation
```

### Printing the values of the variables uisng interpolation

```swift
print("Name1: \(name1), Age: \(age1)")
```

### Multiple variable declaration in a single line

```swift
var name3 = "John Doe", age3 = 30
let firstName : String = "John", lastName : String  = "Doe"
```

### Data types

```swift
let isSwiftFun: Bool = true // Boolean data type
let pi: Double = 3.14159 // Double data type
let e: Float = 2.71828 // Float data type
let ch: Character = "A" // Character data type
```

### Arrays

```swift
var fruits: [String] = ["Apple", "Banana", "Cherry"] // Array of Strings
var numbers: [Int] = [1, 2, 3, 4, 5] // Array of Integers

var mixedArray: [Any] = ["Hello", 42, 3.14, true] // Array of Any type

var array1 = [1, 2, 3, 4, 5] // Array of Integers without type annotation

print(fruits) // prints the array of fruits
print(fruits[0]) // prints the first element of the array

fruits.append("Mango") // adding an element to the array
fruits.remove(at: 1) // removing an element from the array
fruits.insert("Orange", at: 1) // inserting an element at a specific index
let fruitCount = fruits.count // getting the count of elements in the array
let isFruitsEmpty = fruits.isEmpty // checking if the array is empty
```

### Loop through an array

```swift
for fruit in fruits {
    print(fruit) // prints each fruit in the array
}

for (index, fruit) in fruits.enumerated() {
    print("Fruit at index \(index): \(fruit)") // prints each fruit with its index
}
```

### Array slices

A slice is a view into a portion of an array. It does not copy the elements, but rather provides a way to access a subset of the array's elements. Slices are useful when you want to work with a part of an array without creating a new array.

```swift
let slice = fruits[1...2] // creating a slice of the array
print(slice) // prints the slice of the array
let copySlice = Array(slice) // creating a copy of the slice


let numbersSlice = numbers[2...] // creating a slice from index 2 to the end
let numbersSlice2 = numbers[...2] // creating a slice from the start to index 2
let numbersSlice3 = numbers[1..<4] // creating a slice from index 1 to 3 (4 is not included)
let numbersSlice4 = numbers[1...3] // creating a slice from index 1 to 3 (3 is included)


for i in numbersSlice.indices {
    print(numbersSlice[i]) // prints each number in the slice
}


let names = ["Alice", "Bob", "Charlie", "David", "Eve"]
var sliceNames = names[1...3] // creating a slice of the array
print(sliceNames) // prints the slice of the array
// sliceNames[0] = "Arun"  This will not work and will give an error because sliceNames is a slice and not a mutable array. To modify the original array, you can use the following approach:
var mutableNames = Array(sliceNames) // creating a mutable copy of the slice
mutableNames[0] = "Arun" // modifying the first element of the mutable copy
print(mutableNames) // prints the modified mutable copy
```

### 2d Arrays

```swift
var grid: [[Int]] = [
    [1, 2, 3], 
    [4, 5, 6],
    [7, 8, 9]
    ] // 2D array of Integers


for row in grid {
    for col in row {
        print(col, terminator: " ") // prints each element in the 2D array
    }
    print() // prints a new line after each row
}
```

### Update 2d array value

```swift
grid[0][0] = 10 // updating the value at row 0, column 0
```

### Array filter map and reduce

```swift
let scores = [85, 90, 78, 92, 88]
let above80 = scores.filter { $0 > 80 } // filtering scores above 80
let doubledScores = scores.map { $0 * 2 } // doubling each score
 let totalScore = scores.reduce(0, +) // summing all scores
 let averageScore = Double(totalScore) / Double(scores.count) // calculating the average score
```

### search for an element in an array

```swift
let searchElement = 92
if let index = scores.firstIndex(of: searchElement) {
    print("\(searchElement) found at index \(index)")
} else {
    print("\(searchElement) not found in the array")
}

var contains100 = scores.contains(100) // checking if the array contains a specific element
```

### Conditions

```swift
let marks = 85
if marks >= 90 {
    print("Grade: A")
} else if marks >= 80 {
    print("Grade: B")
} else if marks >= 70 {
    print("Grade: C")
} else {
    print("Grade: D")
}

// Ternary operator
let grade = marks >= 90 ? "A" : marks >= 80 ? "B" : "C"

// Multiple conditions using logical operators

let isPassed = marks >= 40 && marks <= 100 // checking if marks are in the passing range
let isFailed = marks < 40 || marks > 100 // checking if marks are in the failing range
```

### Switch Statement

```swift
let gradeSwitch = "B"
switch gradeSwitch {
case "A":
    print("Excellent")
case "B":
    print("Good")
case "C":
    print("Average")
default:
    print("Invalid grade")
}
```

### Switch using range

```swift
let gradeRange = 85
switch gradeRange {
case 90...100:
    print("Grade: A") // both 90 and 100 are included in the range
case 80..<90:
    print("Grade: B") // 80 is included in the range but 90 is not included
case 70..<80:
    print("Grade: C") // 70 is included in the range but 80 is not included
default:
    print("Grade: D")
}
```

### While Loop

```swift
var count = 1
while count <= 5 {
    print("Count: \(count)")
    count += 1
}
```

### Repeat-While Loop

```swift
var repeatCount = 1
repeat {
    print("Repeat Count: \(repeatCount)")
    repeatCount += 1
} while repeatCount <= 5
```

### For Loop

```swift
for i in 1...5 {
    print("For Loop Count: \(i)")
}

  // Iterating through an array using for loop
let colors = ["Red", "Green", "Blue"]
for color in colors {
    print("Color: \(color)")
}   


// Enumerating through an array using for loop
for (index, color) in colors.enumerated() {
    print("Color at index \(index): \(color)")
}
```

### Collections

In Swift, collections are used to store multiple values in a single variable. The most commonly used collection types are Arrays, Sets, and Dictionaries.

```swift
// Arrays
var fruitsCollection: [String] = ["Apple", "Banana", "Cherry"]

// Dictionaries
var person: [String: Any] = ["name": "John Doe", "age": 30]
print(person["name"] ?? "No name") // prints the name from the dictionary

// Sets
var uniqueNumbers: Set<Int> = [1, 2, 3, 4, 5]
uniqueNumbers.insert(3) // trying to insert a duplicate value
print(uniqueNumbers) // prints the set, showing that duplicates are not allowed
```

### Functions

```swift
func greet(name: String) -> String {
    let greetingMessage = "Hello, \(name)!"
    return greetingMessage
}

// function with multiple parameters
func addNumbers(a: Int, b: Int) -> Int {
    return a + b
}
```

### Enums

```swift
enum Direction {
    case north
    case south
    case east
    case west
}

// The above can also be written as:

enum Direction2 {
    case north, south, east, west
}

let d = Direction.north
let d2: Direction = .north // The above can also be written as:let d: Direction = .north


switch d {
case .north:
    print("Heading North")
case .south:
    print("Heading South")
case .east:
    print("Heading East")
case .west:
    print("Heading West")
}   


enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}


let earth = Planet.earth
let mars: Planet = .mars //  The above can also be written as: let mars: Planet = .mars
print("Earth is planet number \(earth.rawValue)") // prints the raw value of the enum
```

Tuples

```swift
let http404Error = (404, "Not Found") // a tuple with an Int and a String

let (statusCode, statusMessage) = http404Error // decomposing the tuple into two constants

print("The status code is \(statusCode)") // prints the status code
print("The status message is \(statusMessage)") // prints the status message


let userInfo = (name: "John Doe", age: 30) // a tuple with named elements
print("User name is \(userInfo.name)") // prints the name from the tuple
print("User age is \(userInfo.age)") // prints the age from the tuple


let userInfo2: (name: String, age: Int) = ("Jane Doe", 25) // a tuple with named elements and type annotation
print("User name is \(userInfo2.name)") // prints the name from the tuple
print("User age is \(userInfo2.age)") // prints the age from the tuple
```

### Structs

```swift
struct Person {
    var name: String
    var age: Int
    
    func greet() -> String {
        return "Hello, my name is \(name) and I am \(age) years old."
    }
}

var person1 = Person(name: "John Doe", age: 30)
print(person1.greet()) // prints the greeting message from the struct
print(person1.name) // prints the name from the struct
print(person1.age) // prints the age from the struct

person1.name = "Jane Doe" // modifying the name of the person
person1.age = 25 // modifying the age of the person
print(person1.greet()) // prints the updated greeting message from the struct
```

### Classes

```swift
class Animal {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func makeSound() -> String {
        return "Some generic animal sound"
    }
}

let animal1 = Animal(name: "Dog", age: 5)
print(animal1.makeSound()) // prints the sound made by the animal



// Observers


class PersonWithObserver {
    var name: String {
        willSet {
            print("About to set name to \(newValue)")
        }
        didSet {
            print("Changed name from \(oldValue) to \(name)")
        }
    }
    
    init(name: String) {
        self.name = name
    }
}
```