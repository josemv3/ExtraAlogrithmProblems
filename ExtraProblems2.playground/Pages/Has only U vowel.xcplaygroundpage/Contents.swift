import UIKit

let fileURL3 = Bundle.main.url(forResource: "sowpods", withExtension: "txt")
let content3 = try String(contentsOf: fileURL3!, encoding: String.Encoding.utf8)

let sowpods = content3.components(separatedBy: "\n")



//What are all of the words that have only “U”s for vowels?
//Test array (shorter)
let sowpods2: [String] = ["AAA", "AAO", "AAI", "EIA", "", "UUU", "UUA", "UUE", "UUI", "BLUBERRY", "UBU"]
//WORKS! Try 2 to reduce code

func findOnlyUVowel(sowpods: [String]) -> [String] {

    var foundVowelUWords: [String] = []

    for words in sowpods {
        if words.contains("U"), !words.contains("A") && !words.contains("E") && !words.contains("I") && !words.contains("O") {
            foundVowelUWords.append(words)
        }
    }

    print(foundVowelUWords)
    return foundVowelUWords
        
}
findOnlyUVowel(sowpods: sowpods)

//Try 2
//Helper Func was way too slow
//func hasVowelsNotU(word: String) -> Bool {
//    //lowerCase if needed.
//    return word.contains("A") && word.contains("E") && word.contains("I") && word.contains("O")
//}




//Try 3
func findWordsWithOnlyUVowel(sowpods: [String]) -> [String] {
    var wordsWithOnlyUVowels: [String] = []
    let vowelsNotU = CharacterSet(charactersIn: "AEIO")
    
    for word in sowpods {
        if word.rangeOfCharacter(from: vowelsNotU) != nil {
            continue
        } else if word.contains("U"){
            wordsWithOnlyUVowels.append(word)
        }
    }
    print(wordsWithOnlyUVowels)
    return wordsWithOnlyUVowels
}

findWordsWithOnlyUVowel(sowpods: sowpods)
