//: [Previous](@previous)

import Foundation

let fileURL3 = Bundle.main.url(forResource: "sowpods", withExtension: "txt")
let content3 = try String(contentsOf: fileURL3!, encoding: String.Encoding.utf8)

let sowpods = content3.components(separatedBy: "\n")

//What is the longest word that can be made from only the letters in “RSTLNE”? Not all of those letters need to be used, and letters can be repeated. Make sure your solution can handle ties.


func longestWordsMadeFromRSTLNE(wordArray: [String]) -> [String] {
    var longestRSTLNEFound: [String] = []
    let allowedChatacters = Set("RSTLNE")
    
    for word in wordArray {
        if word.isEmpty {
            continue
        }
        if allowedChatacters.isSuperset(of: word.uppercased()) {
            if longestRSTLNEFound.isEmpty {
                longestRSTLNEFound.append(word)
                continue
            }
            if word.count >= longestRSTLNEFound[0].count {
                if word.count > longestRSTLNEFound[0].count {
                    longestRSTLNEFound = [String]()
                }
                longestRSTLNEFound.append(word)
            }
        }
    }
    print(longestRSTLNEFound)
    return longestRSTLNEFound
}
longestWordsMadeFromRSTLNE(wordArray: sowpods)
