import UIKit

// MARK: Linear Search
var linearArray = [1,5,7,3,25,19,60,73,98,46]

func linearSearch(_ list: [Int], searching: Int) -> Int? {
    // To inspect how many steps it took
    //var steps = 0
    
    // Iterate through the array
    for i in 0...list.count - 1 {
        //steps += 1
        
        // If the current value is equal to the searching value, then return its index
        if list[i] == searching {
            
            //print("Linear complete, took \(steps) steps.")
            return i
        }
    }
    
    //print("Linear complete, took \(steps) steps.")
    // Return nil if the value is not found
    return nil
}

// Testing
let linearResult1 = linearSearch(linearArray, searching: 7)
let linearResult2 = linearSearch(linearArray, searching: 98)
let linearResult3 = linearSearch(linearArray, searching: 101)
print(linearResult1 ?? "Not found")
print(linearResult2 ?? "Not found")
print(linearResult3 ?? "Not found")

// MARK: Binary Search
var binaryArray = [1,2,3,3,9,15,27,31,81,100]

func binarySearch(_ list: [Int], searching: Int) -> Int? {
    // To inspect how many steps it took
    //var steps = 0
    
    // Define min and max index values
    var min = 0
    var max = list.count - 1
    
    // Run as long as min <= max, meaning that there are elements in the range
    while min <= max {
        //steps += 1
        
        // Define middle and floor it
        let middle = Int((min + max) / 2)
        
        // If it's the right value, return the index
        if list[middle] == searching {
            
            //print("Binary complete, took \(steps) steps.")
            return middle
        // If the value is bigger, set the max to one index lower
        } else if list[middle] > searching {
            max = middle - 1
        // If the value is smaller, set teh min to one index higher
        } else {
            min = middle + 1
        }
    }
    
    //print("Binary complete, took \(steps) steps.")
    // Return nil if the value is not found
    return nil
}

// Testing
let binaryResult1 = binarySearch(binaryArray, searching: 15)
let binaryResult2 = binarySearch(binaryArray, searching: 31)
let binaryResult3 = binarySearch(binaryArray, searching: 158)
print(binaryResult1 ?? "Not found")
print(binaryResult2 ?? "Not found")
print(binaryResult3 ?? "Not found")
