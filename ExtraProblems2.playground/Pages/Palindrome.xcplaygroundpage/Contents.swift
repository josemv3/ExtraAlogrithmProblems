//: [Previous](@previous)

import Foundation

let testArray: [String] = ["Anna", "civic", "kayak", "racecar", "joey", "danielle", "billy", "george"]
let testArray2: [String] = ["Anna", "civic", "kayak", "racecar", "joey", "danielle", "billy", "george",
                            "taco cat", "no lemon", "no melon", "never odd, or even!", "Sit on a potato, Otis.", " leve l"]

    func isPalindrome(_ s: String) -> Bool {
        
        let newString = s.lowercased()
        let array = Array(newString)
        var left = 0
        var right = s.count - 1
        
        
        while left < right {
            if !array[left].isLetter, !array[left].isNumber {
                left += 1
            } else if !array[right].isLetter, !array[right].isNumber {
                right -= 1
            } else if array[left] == array[right] {
                left += 1
                right -= 1
            } else if array[left] != array[right]{
                return false
            }
        }
        return true
    }
isPalindrome("never odd, or even!")



// Anna, civic, kayak, racecar,
// taco cat, no lemon, no melon, never odd or even
// Was it a cat I saw?
// Sit on a potato, Otis.


