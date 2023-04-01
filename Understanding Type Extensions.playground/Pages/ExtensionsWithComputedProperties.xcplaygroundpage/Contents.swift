/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Extensions with Computed Properties
 Create an extension to String that is a computed property that will count the number of words in a provided String
*/
import Foundation

// Use sentence as an example for exercises 1 and 2
let sentence =
"""
Now is the time for all good men to come to the aid of the party.

We will have a very good time.
"""
// Use word as an example for exercises 3 and 4
let word = "SwiftUI"

// Create your extension here for examples 2 and 4
extension String {
    var wordCount: Int {
        self.components(separatedBy: .whitespacesAndNewlines)
            .filter {$0 != ""}
            .count
    }
    
    var scrambled: String {
        String(self.shuffled())
    }
}


code(for: "1. No Extension") {
    // Without using an extension, determine the number of words in 'sentence' and print to the console
    var words = sentence.components(separatedBy: .whitespacesAndNewlines)
        .filter {$0 != ""}
    print(words)
    print(words.count)
}

code(for: "2. Extension to determine number of words ") {
    // Use the extension to print the sentence word coult
    print(sentence.wordCount)
}


code(for: "3. Scramble the letters without an extension") {
    // print the letters in `word` scrambled
    let letters = word.shuffled()
    print(letters)
    print(String(letters))
    
}

code(for: "4. Extension to scramble letters in String") {
    // Write an extension for String that will scramble the letters in any string
    // Print the scrambled string to the clipboard
    print(word.scrambled)
    print("Stewart".scrambled)
}

/*:
[< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
*/
