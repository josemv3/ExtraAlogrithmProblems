

import Foundation

let fileURL3 = Bundle.main.url(forResource: "sowpods", withExtension: "txt")
let content3 = try String(contentsOf: fileURL3!, encoding: String.Encoding.utf8)

let sowpods = content3.components(separatedBy: "\n")

let sowpods2 = ["RTSENL", "LNERSTTT", "BOB", "REN", "BURRITO", "SLENR", "RSTLNEO", "BLZ"]

//What are all of the words that can be made from only the letters in “RSTLNE”? Not all of those letters need to be used, and letters can be repeated.

//TRY 1 SUCCESS
//func wordsMadeFromRSTLNE(sowpods: [String]) -> [String] {
//
//    var wordsWithRSTLNE: [String] = []
//
//    for word in sowpods {
//        //if word.rangeOfCharacter(from: lettersNeeded) != nil {
//        if word.range(of: "^[RSTLNE]*$", options: .regularExpression) != nil {
//            wordsWithRSTLNE.append(word)
//        }
//    }
//    print(wordsWithRSTLNE)
//    return wordsWithRSTLNE
//}
//wordsMadeFromRSTLNE(sowpods: sowpods2)

//TRY 2 replace for loop with filter.
//func wordsMadeFromRSTLNE2(wordArray: [String]) -> [String] {
//
//    var wordsWithRSTLNE: [String] = []
//
//    wordsWithRSTLNE = wordArray.filter({ $0.range(of: "^[RSTLNE]+$", options: .regularExpression) != nil })
//    print(wordsWithRSTLNE.count)
//    return wordsWithRSTLNE
//}

//wordsMadeFromRSTLNE2(sowpods: sowpods)

//Solved using superSet from CharSet:
func wordsMadeFromRSTLNE3 (sowpods: [String]) -> [String] {

    var wordsMadeFromRSTLNE: [String] = []
    let allowedCharacters = Set("RSTLNE")


    for word in sowpods {
        if allowedCharacters.isSuperset(of: word) {
            wordsMadeFromRSTLNE.append(word)
        }
    }
    print(wordsMadeFromRSTLNE.count)
    return wordsMadeFromRSTLNE
}
wordsMadeFromRSTLNE3(sowpods: sowpods2)


//SuperSet with filter over for loop
func wordsMadeFromRSTLNE4(wordArray: [String]) -> [String] {
    var wordsMadeFromRSTLNE: [String] = []
    let allowedCharacters = Set("RSTLNE")
    
    wordsMadeFromRSTLNE = wordArray.filter({ allowedCharacters.isSuperset(of: $0) })
    
    print(wordsMadeFromRSTLNE.count)
    return wordsMadeFromRSTLNE
}
wordsMadeFromRSTLNE4(wordArray: sowpods)


