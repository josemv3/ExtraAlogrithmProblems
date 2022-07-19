//: [Previous](@previous)

import Foundation

let fileURL3 = Bundle.main.url(forResource: "sowpods", withExtension: "txt")
let content3 = try String(contentsOf: fileURL3!, encoding: String.Encoding.utf8)

let sowpods = content3.components(separatedBy: "\n")

//What are all of the words that can be made without the letters in “AEIOSHRTN” (in other words, without the most common letters)? Not all of those letters need to be used, and letters can be repeated.

//BCDFGJKLMPQUVWXYZ   AEIOSHRTN

func findWordsWithoutAEIOSHRTN(wordArray: [String]) -> [String] {
    var wordsWithoutAEIOSHRTN: [String] = []
    let allowedCharacters = Set("BCDFGJKLMPQUVWXYZ")

    wordsWithoutAEIOSHRTN = wordArray.filter({ allowedCharacters.isSuperset(of: $0.uppercased()) })
    
    return wordsWithoutAEIOSHRTN
}
findWordsWithoutAEIOSHRTN(wordArray: sowpods)


//What is the longest word that can be made without the letters in “AEIOSHRTN” (in other words, without the most common letters)? Not all of those letters need to be used, and letters can be repeated. Make sure your solution can handle ties.

func findLongestWordsWithoutAEIOSHRTN(wordArray: [String]) -> [String] {
    var longestWordsWithoutAEIOSHRTN: [String] = []
    let allowedCharacters = Set("BCDFGJKLMPQUVWXYZ")
    //CharacterSet use .inverted and have original characters AEIOSHRTN and find the inverse.
    
    for word in wordArray {
        if allowedCharacters.isSuperset(of: word.uppercased()) {
            if longestWordsWithoutAEIOSHRTN.isEmpty {
                longestWordsWithoutAEIOSHRTN.append(word)
                continue
            }
            if word.count >= longestWordsWithoutAEIOSHRTN[0].count {
                if word.count > longestWordsWithoutAEIOSHRTN[0].count {
                    longestWordsWithoutAEIOSHRTN = [String]()
                }
                longestWordsWithoutAEIOSHRTN.append(word)
            }
        }
    }
    print(longestWordsWithoutAEIOSHRTN)
    return longestWordsWithoutAEIOSHRTN
}
findLongestWordsWithoutAEIOSHRTN(wordArray: sowpods)
