//: [Previous](@previous)

import Foundation

let fileURL3 = Bundle.main.url(forResource: "sowpods", withExtension: "txt")
let content3 = try String(contentsOf: fileURL3!, encoding: String.Encoding.utf8)

let sowpods = content3.components(separatedBy: "\n")

let sowpods2: [String] = ["AAA", "AAO", "AAI", "EIA", "", "UUU", "UUA", "UUE", "UUI", "BLUBERRY", "UBU", "EPPLR"]


//What are all of the words that have only “E”s for vowels and are at least 15 letters long?

//Remove word.count >= 15 (from line 30) and use func as generic for any vowel imput. 

func findWordWithSearchVowel(sowpods: [String], searchVowel: Character) -> [String] {
    
    var wordsWithSearchVowelFound: [String] = []
    var vowelString = "AEIOU"
    
    if let i = vowelString.firstIndex(of: searchVowel) {
        vowelString.remove(at: i)
    }
    let vowelsNotSearchVowel = CharacterSet(charactersIn: vowelString)
    
    for word in sowpods {
        if word.rangeOfCharacter(from: vowelsNotSearchVowel) != nil  {
            continue
        } else if word.contains(searchVowel), word.count >= 15  {//got rid of empty stings (instead of else)
            wordsWithSearchVowelFound.append(word)
        }
    }
    print(wordsWithSearchVowelFound)
    return wordsWithSearchVowelFound
}
findWordWithSearchVowel(sowpods: sowpods, searchVowel: "E")
