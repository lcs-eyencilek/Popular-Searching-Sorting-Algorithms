import UIKit

var sampleList1 = [11,15,28,99,87,21,14,3,2,44]
var sampleList2 = [1,5,7,3,4,2,5,11,16,12,19,2]
var sampleList3 = [1,5,2,101,35,20,12,34,78,98]

// MARK: Selection Sort
// In selection sort, the current element the program iterates through is set to min and the upcoming values are checked.
// When a smaller value is found, it is assigned to min. At the end, min is replaced with the current index. This process is repeated for each element in the array.
func selection(sort list: inout [Int]) {
    
    // Iterate through every element in the list
    for index in 0...list.count - 2 {
        // Set the min value as the current index
        var min = index
    
        // Iterate through the upcoming elements
        for unsorted in index + 1...list.count - 1 {
            // If the upcoming element value is smaller that the one at index "min", min is set to the index of unsorted
            if list[unsorted] < list[min] {
                min = unsorted
            }
        }
        
        // If min is not equal to index, swap values at indexes
        if min != index {
            list.swapAt(min, index)
        }
    }
}

selection(sort: &sampleList1)

// MARK: Bubble Sort
// In bubble sort, elements with higher values float to the top just like a bubble. And this process repeats until no other potential swaps are found.
func bubbleSort(sort list: inout [Int]) {

    // Declare a variable called swapped to keep track of swaps
    var swapped = true

    // Until swapped returns fales at the end of the loop, keep repeating the process
    while swapped {
        // Swapped is assigned false again
        swapped = false
        // Iterate through every element inside the array
        for index in 1...list.count - 1 {
            // If the element one behind has a bigger value, swap and assign swapped = true
            if list[index - 1] > list[index]  {
                list.swapAt(index, index - 1)
                swapped = true
            }
            
        }
        
    }
}

bubbleSort(sort: &sampleList2)

// MARK: Insertion Sort
// In insertion sort, current element is compared to the previous ones and moved backwards until the one before is smaller. When the value is placed, the program moves on to the next value in the array
func insertion(sort list: inout [Int]) {
    
    // Iterate through each element
    for index in 1...list.count - 1 {
        // Keep track of the currently sorting value with sorting
        var sorting = index
        
        // Iterate through the previous elements backwards
        for compared in (0...index - 1).reversed() {
            
            // If previous element value is greater, swap and assign reduce sorting by 1 to stay on the same value
            if list[sorting] < list[compared] {
                list.swapAt(sorting, compared)
                sorting -= 1
            }
        }
    }
}

insertion(sort: &sampleList3)
