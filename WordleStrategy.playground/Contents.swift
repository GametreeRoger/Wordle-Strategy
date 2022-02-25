import UIKit

class Wordle {
    typealias CorrectType = [Int:Character]
    typealias WrongType = [Int: [Character]]
    typealias CharArray = [Character]
    typealias CharSet = Set<Character>
    
    private let MAX_CHARACTER_COUNT = 5
    private let EMPTY_CHARACTER: Character = "_"
    private var correctLocationChars: CorrectType?
    private var wrongLocationChars: WrongType?
    private var notExistChars: CharArray?
    private var existCharArray = CharArray()
    private var wrongLocationSet = CharSet()
    private var allText = [String]()
    
    init(correctLocationChars: CorrectType?, wrongLocationChars: WrongType?, notExistChars: CharArray?) {
        self.correctLocationChars = correctLocationChars
        self.wrongLocationChars = wrongLocationChars
        self.notExistChars = notExistChars
        existCharArray = getExistsCharacter().sorted()
        if let wrongLocationChars = wrongLocationChars {
            wrongLocationSet = CharSet()
            for (_, chars) in wrongLocationChars {
                wrongLocationSet = wrongLocationSet.union(CharSet(chars))
            }
        }
//        print(existCharArray)
    }
    
    private func getExistsCharacter() -> CharArray {
        let alphabets = "abcdefghijklmnopqrstuvwxyz"
        var alphabetSet = CharSet(alphabets)
        // 先把不存在的字母排除
        if let notExistChars = notExistChars {
            let notExistSet = CharSet(notExistChars)
            alphabetSet.subtract(notExistSet)
        }
        return CharArray(alphabetSet)
    }
    
    private func getCorrectCharacter(index: Int) -> Character? {
        guard let correctLocationChars = correctLocationChars, let char = correctLocationChars[index] else {
            return nil
        }
        
        return char
    }
    
    private func isWrongLocation(location: Int, char: Character) -> Bool {
        guard let wrongLocationChars = wrongLocationChars, let wrongArray = wrongLocationChars[location] else {
            return false
        }
        
        return Set<Character>(wrongArray).contains(char)
    }
    
    private func checkTextValid(text: [Character]) -> Bool {
        let word = String(text)
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        return misspelledRange.location == NSNotFound
    }
    
    private func guess(index: Int, text: CharArray) {
        guard index != MAX_CHARACTER_COUNT else {
            if checkTextValid(text: text) && wrongLocationSet.isSubset(of: text) {
                allText.append(String(text))
            }
            return
        }
        
        var guessString = text
        if let correct = getCorrectCharacter(index: index) {
            guessString[index] = correct
            guess(index: index + 1, text: guessString)
        } else {
            for g in existCharArray {
                if isWrongLocation(location: index, char: g) {
                    continue
                }
                guessString[index] = g
                guess(index: index + 1, text: guessString)
            }
        }
    }
    
    func play() {
        var guessString = Array<Character>(repeating: EMPTY_CHARACTER, count: MAX_CHARACTER_COUNT)
        // 收集所有排列組合的字串
        guess(index: 0, text: guessString)
        if allText.count > 0 {
            print("總共有\(allText.count)組單字")
            print(allText.joined(separator: ", "))
        } else {
            print("沒有可以組合的單字")
        }
    }
}

let wordle = Wordle(correctLocationChars: [
    0: "v",
    1: "i"
], wrongLocationChars: [
    2: ["d"],
    3: ["d"]
], notExistChars: [
    "a", "n", "k", "l", "e", "b", "r", "u", "s", "h", "c", "y", "f", "g", "t", "o"
])

wordle.play()

