//: [Previous](@previous)

import Foundation

//l e v e     l

//lowercase
//check if !isLetter, and number left
//same with right
// +=  if letter left == letter right
// -= of right letter == left

//func isPalandrome(word: String) -> Bool {
//    let lowercasedWord = word.lowercased()
//    let wordNoSpaces = lowercasedWord.replacingOccurrences(of: " ", with: "")
//    let letterArray = Array(wordNoSpaces)
//
//    var countLeft = 0
//    var countRight = wordNoSpaces.count - 1
//
//    while countLeft <= countRight {
//
//        if letterArray[countLeft].isLetter, letterArray[countLeft].isNumber  {
//            countLeft += 1
//        } else if !letterArray[countRight].isLetter, !letterArray[countRight].isNumber {
//            countRight -= 1
//        } else if letterArray[countLeft] == letterArray[countRight] {
//            countLeft += 1
//            countRight -= 1
//        } else if letterArray[countLeft] != letterArray[countRight] {
//            return false
//        }
//
//    }
//     return true
//}
//isPalandrome(word: " leve l")







func isPalandrome2(word: String) -> Bool {
    let lowercasedWord = word.lowercased()
    let letterArray = Array(lowercasedWord)

    var countLeft = 0
    var countRight = word.count - 1
    
    while countLeft < countRight {

        if letterArray[countLeft].isLetter == false && letterArray[countLeft].isNumber == false {
            countLeft += 1
            continue
        }
        if letterArray[countRight].isLetter == false && letterArray[countRight].isNumber == false {
            countRight -= 1
            continue
        }
        if letterArray[countLeft] == letterArray[countRight] {
            countLeft += 1
            countRight -= 1
        } else {
            return false
        }
    }
     return true
}
isPalandrome2(word: " leve l ")

