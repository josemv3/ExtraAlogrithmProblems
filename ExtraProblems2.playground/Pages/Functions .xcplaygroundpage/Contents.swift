//: [Previous](@previous)

import Foundation

let countries: [String] = ["United States", "United Emerits", "Puerto Rico", "Mexico", "United Kingdom", "WeAreUnited"]



//***********QUESTION 1***************

//Write a function that takes a string substring as an argument and returns an array of all of the words that contain that substring (the substring can appear anywhere in the word).


//TRY 1:
func findSubstring(wantedSubString: String, word: String) -> [String] {
    var foundSubStringsWords: [String] = []
    
    if word.contains(wantedSubString) {
        foundSubStringsWords.append(word)
    }
    return foundSubStringsWords
}

//TRY 2:
func findSubstring2(wantedSubstring: String, wordArray: [String]) -> [String] {
    wordArray.filter({$0.contains(wantedSubstring)})
}
findSubstring2(wantedSubstring: "United", wordArray: countries)


//***********QUESTION 2***************

//Write a function that takes a string `prefix` as an argument and returns an array of all of the words that start with that prefix (the prefix has to be at the beginning of the word).

func findPrefix(wantedPrefix: String, wordArray: [String]) -> [String] {
    wordArray.filter( {$0.hasPrefix(wantedPrefix) })
}
findPrefix(wantedPrefix: "Uni", wordArray: countries)


//***********QUESTION 3***************

//Write a function that takes a string `prefix` as the first argument, a string `suffix` as the second argument, and an integer `length` as the third argument. It should return an array of all of the words that start with that prefix, end with that suffix, and are that length.

func findPrefixSuffixAndLength(prefix: String, suffix: String, length: Int, wordArray: [String]) -> [String] {
    wordArray.filter({ $0.hasPrefix(prefix) && $0.hasSuffix(suffix) && $0.count == length })
}

findPrefixSuffixAndLength(prefix: "We", suffix: "ed", length: 11, wordArray: countries)
