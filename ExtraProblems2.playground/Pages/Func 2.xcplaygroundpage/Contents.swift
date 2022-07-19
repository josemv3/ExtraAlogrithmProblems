//: [Previous](@previous)

import Foundation

let countries: [String] = ["United States", "United Emerits", "Puerto Rico", "Mexico", "United Kingdom", "WeAreUnited"]


//*********** QUESTION 4 ***************
//Write a function that takes a string `word` as an argument and returns a count of all of the “A”s in that string.

//TRY 1
func countAletter(word: String) -> Int {
    var count = 0
    let wordLowercased = word.lowercased()
    
    for letter in wordLowercased{
        if letter == "a" {
            count += 1
        }
    }
    return count
}
countAletter(word: "Alabama")

//TRY 2 .FILTER
func countAletter2(word: String) -> Int {
    let wordLowercased = word.lowercased()
    let y = wordLowercased.filter( { $0 == "a" } )
    
    return y.count
}
countAletter2(word: "Alabama")


//*********** QUESTION 5 ***************

//Write a function that takes a string `word` as the first argument, a string `letter` as the second argument, and returns a count of how many times `letter` occurs in `word`.

//TRY 1
func countLetterInWord(word: String, letter: Character) -> Int {
    let wordLowercase = word.lowercased()
    var count = 0
    for char in wordLowercase {
        if char == letter {
            count += 1
        }
    }
    return count
}
countLetterInWord(word: "Alabama", letter: "a")

//TRY 2 .filter
func countTargetLettersInWord(for word: String, letter: Character) -> Int {
    let wordLowercased = word.lowercased()
    let y = wordLowercased.filter( { $0 == "a" } )
    return y.count
}
countTargetLettersInWord(for: "Baaaaabaaaabababaaaaababa", letter: "a")
    


//*********** QUESTION 6 ***************

//Write a function that takes a string `phrase` and returns a dictionary contains counts of how many times every character appears in `phrase`.

func countLetterOccurenceInPhrase(phrase: String) -> [String.Element: Int] {
    var letterDict: [String.Element: Int] = [:]
    
    for char in phrase {
        if letterDict.isEmpty {
            letterDict[char] = 1
            continue
        }
        if letterDict[char] == nil {
            letterDict[char] = 1
        } else {
            letterDict[char]! += 1
        }
    }
    return letterDict
}
countLetterOccurenceInPhrase(phrase: "Who let the dogs out? Who, Who, Who?")



