//
//  Created by Muneesh Kumar on 21/02/25.
//

import Foundation

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var container = [String]()
        for i in 0..<board.count {
            for j in 0..<board.count {
                let currentCharacter = board[i][j]
                if currentCharacter != "." {
                    let row = "\(currentCharacter)contains row at \(i)"
                    if container.contains(row) {
                        return false
                    } else {
                        container.append(row)
                    }

                    let column = "\(currentCharacter)contains column at \(j)"
                    if container.contains(column) {
                        return false
                    } else {
                        container.append(column)
                    }

                    let box = "\(currentCharacter) box at \((i/3)*3) and \(j/3)"
                    if container.contains(box) {
                        return false
                    } else {
                        container.append(box)
                    }
                }
            }
        }
        return true
    }
}
