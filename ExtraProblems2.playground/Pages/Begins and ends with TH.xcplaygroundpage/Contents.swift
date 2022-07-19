//: [Previous](@previous)

import Foundation

let fileURL3 = Bundle.main.url(forResource: "sowpods", withExtension: "txt")
let content3 = try String(contentsOf: fileURL3!, encoding: String.Encoding.utf8)

let sowpods = content3.components(separatedBy: "\n")

//What are all of the words that both start with a “TH” and end with a “TH”?

func findPrefixAndSuffixTH(sowpods: [String]) -> [String] {
    
    var wordsWithTHPreAndSuf: [String] = []
    
    for word in sowpods {
        
        if word.hasSuffix("TH") && word.hasPrefix("TH") {
            wordsWithTHPreAndSuf.append(word)
        }
    }
    print(wordsWithTHPreAndSuf)
    return wordsWithTHPreAndSuf
}
//findPrefixAndSuffixTH(sowpods: sowpods)


//Try 2 (reduce code)
func findWordStartsAndEndsWithTH2(sowpods: [String]) -> [String] {
    let searchString = "TH"
    return sowpods.filter({ $0.hasPrefix(searchString) && $0.hasSuffix(searchString) })
}
findWordStartsAndEndsWithTH2(sowpods: sowpods)



//TRY 3
//Using default argument in parameter!
func findWordStartsAndEndsWithTH3(sowpods: [String], searchString: String = "TH") -> [String] {
   sowpods.filter {
      $0.hasPrefix(searchString) && $0.hasSuffix(searchString)
   }
}
