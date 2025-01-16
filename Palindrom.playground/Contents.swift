class Solution {
    func isPalindrome(_ s: String) -> Bool {
        // Solution 2
        /*
        var stringArr = Array(s)
        var front: Int = 0
        var rear: Int = stringArr.count - 1
        while front < rear {
            if !isAlphaNumeric(char: stringArr[front]) {
                front += 1
                continue
            }
             if !isAlphaNumeric(char: stringArr[rear]) {
                rear -= 1
                continue
            }
            if stringArr[front].lowercased() != stringArr[rear].lowercased() {
                return false
            }
            front += 1
            rear -= 1
        }
        return true
        */
        // Solution 1
        
        var updatedString = ""
        var stringArr = Array(s)
        for char in stringArr  {
            if isAlphaNumeric(char: char) {
              updatedString.append(String(char).lowercased())
            }
        }
        if String(updatedString) == String(String(updatedString).reversed()) {
            return true
        }
        return false
       


    }

    func isAlphaNumeric(char: Character) -> Bool {
        if char.isNumber || char.isLetter {
            return true
        }
        return false
    }
    
}
