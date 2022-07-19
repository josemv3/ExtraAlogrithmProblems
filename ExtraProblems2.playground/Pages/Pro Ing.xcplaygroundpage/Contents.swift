//: [Previous](@previous)

import Foundation

let fileURL3 = Bundle.main.url(forResource: "sowpods", withExtension: "txt")
let content3 = try String(contentsOf: fileURL3!, encoding: String.Encoding.utf8)

let sowpods = content3.components(separatedBy: "\n")

//What are the shortest words that start with “PRO” and end in “ING”? Make sure your solution can handle ties.


// Search through word list (through perameter)

//remove empty string

//check if word contains PRO ING as prefix and suffix

//assign first word with PRO and ING as targetWord

//check if word.count =< targetWord.count
//if shorter than target word, destrfoy array and remake with new shorter word.

//retrun array of string
let sowpods2: [String] = ["PROBING", "PROCEEDING", "PROCESSIONING", "BARRY", "LION", "PROING",""]


//SOLVED WITH 2 FOR LOOPS
//func findShortestWordsWithProING (sowpods: [String]) -> [String] {
//    var wordsWithProIng: [String] = []
//    var shortestWordsWithProIngFound: [String] = []
//    var targetWord = ""
//
//    for word in sowpods {
//        if word == "" {
//            continue
//        }
//
//        if word.hasPrefix("PRO"), word.hasSuffix("ING") {
//            wordsWithProIng.append(word)
//            targetWord = wordsWithProIng[0]
//        }
//    }
//
//    for word in wordsWithProIng {
//        if word.count <= targetWord.count && word != targetWord {
//
//            if word.count < targetWord.count && word != targetWord {
//                targetWord = word
//                shortestWordsWithProIngFound = [String]()
//            }
//            shortestWordsWithProIngFound.append(word)
//        }
//
//    }
//
//    print(wordsWithProIng.count)
//    print(shortestWordsWithProIngFound)
//    return shortestWordsWithProIngFound
//}
//findShortestWordsWithProING(sowpods: sowpods)

//SOLVED WITH filter and for loop:

func findShortestWordsWithProING2 (sowpods: [String]) -> [String] {
    var wordsWithProIng: [String] = []
    var shortestWordsWithProIngFound: [String] = []
    var targetWord: String
    let searchString1 = "PRO"
    let searchString2 = "ING"

    wordsWithProIng = sowpods.filter({ $0.hasPrefix(searchString1) && $0.hasSuffix(searchString2)})

    targetWord = wordsWithProIng[0]

    for word in wordsWithProIng {
        if word.isEmpty {
            continue
        }
        if word.count <= targetWord.count && word != targetWord {
            if word.count < targetWord.count && word != targetWord {
                targetWord = word
                shortestWordsWithProIngFound = [String]()
            }
            shortestWordsWithProIngFound.append(word)
        }
    }
    print(wordsWithProIng.count)
    print(shortestWordsWithProIngFound)
    return shortestWordsWithProIngFound
}
//findShortestWordsWithProING2(sowpods: sowpods)


//Cant get this idea to work: //GOT IT!
func findShortestWordsWithProING3 (sowpods: [String]) -> [String] {
   
    var shortestWordsWithProIngFound: [String] = []
    let searchString1 = "PRO"
    let searchString2 = "ING"

    for word in sowpods {
        if word.isEmpty {
            continue
        }
        if word.hasPrefix(searchString1), word.hasSuffix(searchString2) {
            if shortestWordsWithProIngFound.isEmpty { //KEY: if array is empty fill it with first PRO ING...
                shortestWordsWithProIngFound.append(word) //Now we have word to chekc length against.
                continue //only happens once if array is empty. doesnt check below / starts at the top.
            }
            if word.count <= shortestWordsWithProIngFound[0].count  {
                if word.count < shortestWordsWithProIngFound[0].count {
                    shortestWordsWithProIngFound = [String]()
                }
                shortestWordsWithProIngFound.append(word)
            }
        }
    }
    print(shortestWordsWithProIngFound)
    return shortestWordsWithProIngFound
}
findShortestWordsWithProING3(sowpods: sowpods)
