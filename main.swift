// Variable declartion without type annotation

var name1 = "John Doe" // declaring a immutable variable of type String 
let age1 = 30 // declaring a constant variable of type Int. Immutable and cannot be changed   

// variable declaration with type annotation

var name2: String = "John Doe" 
var age2: Int = 30 // declaring a variable of type Int with type annotation


// printing the values of the variables uisng interpolation
print("Name1: \(name1), Age: \(age1)")


// Multiple variable declaration in a single line
var name3 = "John Doe", age3 = 30
let firstName : String = "John", lastName : String  = "Doe" 


// Data types:

let isSwiftFun: Bool = true // Boolean data type
let pi: Double = 3.14159 // Double data type
let e: Float = 2.71828 // Float data type
let ch: Character = "A" // Character data type


// Arrays

var fruits: [String] = ["Apple", "Banana", "Cherry"] // Array of Strings
var numbers: [Int] = [1, 2, 3, 4, 5] // Array of Integers

var mixedArray: [Any] = ["Hello", 42, 3.14, true] // Array of Any type

var array1 = [1, 2, 3, 4, 5] // Array of Integers without type annotation

print(fruits) // prints the array of fruits
print(fruits[0]) // prints the first element of the array

fruts.append("Mango") // adding an element to the array
fruits.remove(at: 1) // removing an element from the array
fruits.insert("Orange", at: 1) // inserting an element at a specific index
fruits.count // getting the count of elements in the array
fruits.isEmpty // checking if the array is empty

// Loop through an array

for fruit in fruits {
    print(fruit) // prints each fruit in the array
}

for (index, fruit) in fruits.enumerated() {
    print("Fruit at index \(index): \(fruit)") // prints each fruit with its index
}


// Array slices

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


// 2d Arrays

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

// update 2d array value
   grid[0][0] = 10 // updating the value at row 0, column 0

   // Array filter map and reduce

   let scores = [85, 90, 78, 92, 88]
   let above80 = scores.filter { $0 > 80 } // filtering scores above 80
   let doubledScores = scores.map { $0 * 2 } // doubling each score
    let totalScore = scores.reduce(0, +) // summing all scores
    let averageScore = Double(totalScore) / Double(scores.count) // calculating the average score   


// search for an element in an array

   let searchElement = 92
   if let index = scores.firstIndex(of: searchElement) {
       print("\(searchElement) found at index \(index)")
   } else {
       print("\(searchElement) not found in the array")
   }

   scores.contains(100) // checking if the array contains a specific element

