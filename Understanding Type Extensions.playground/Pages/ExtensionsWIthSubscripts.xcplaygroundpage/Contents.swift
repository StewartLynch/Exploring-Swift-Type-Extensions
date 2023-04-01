/*:
 [< Previous](@previous)                    [Home](Introduction)
 ## Extensions with Subscripts
 Create an extension to an array that will return an optional value for a specific index or nil if no value exists at the index
 */

import Foundation

// Use number as an example
let myArray = [1, 2, 3]

// Create your extension here for examples 3 and 4 here
extension Array {
    subscript(safe index: Int) -> Element? {
//        if index < count {
//            return self[index]
//        } else {
//            return nil
//        }
        index < count ? self[index] : nil
    }
}


code(for: "1. Index 1 of myArray") {
    // Before writing extension print the value of myArray at index 1
    print(myArray[1])
}

code(for: "2. Index 3 of myArray") {
    //  Before writing extension print the value of myArray at index 3
//    print(myArray[3])
}

code(for: "3. Safe index 1 of myArray") {
    // Write an extension for array that will return an optional if index value exists and nil if not
    // Use your extension to print the value of myArray at index 1
    print(myArray[safe: 1])

}

code(for: "4. Safe index 3 of myArray") {
    // Use your extension to print the value of myArray at index 3
    print(myArray[safe: 3])
}


/*:
[< Previous](@previous)                    [Home](Introduction)
*/
