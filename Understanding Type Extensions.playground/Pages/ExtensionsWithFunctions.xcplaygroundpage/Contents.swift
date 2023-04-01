/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Extensions with functions
 Create an extension to Double that will round a Double to a specific number of decimal places
*/
import Foundation

// Use number as an example
let number = 123.45678

// Create your extension here for examples 3 and 4
extension Double {
    var threePlaces: Double {
//        (1000 * self).rounded() / 1000
        (pow(10,3) * self).rounded() / pow(10,3)
    }
    
    func round(to places: Int) -> Double {
        (pow(10,Double(places)) * self).rounded() / pow(10,Double(places))
    }
}

code(for: "1. Simple Round") {
    // Round number and print it to the console
    print(number.rounded())
    
}

code(for: "2. Rounding to 3 decimal places") {
    // Round number to 3 decimal places and print it to the console
    let numberRoundedTo3DecPlaces = (1000 * number).rounded() / 1000
    print(numberRoundedTo3DecPlaces)
   
}

code(for: "3. Extension to round to 3 decimal places") {
    // Create an extension at the top of this file that will extend Double to round a number to 3  decimal places
    // Print the result of rounding `number` to 3 places
    print(number.threePlaces)
}

code(for: "4. Extension as function") {
    // Create an function as an extension to Double that will round your number to any specified number of places
    // Test by printing `number` rounded to 2, 3 and 4 places
    print(number.round(to: 2))
    print(number.round(to: 3))
    print(number.round(to: 4))
}

/*:
[< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
*/
