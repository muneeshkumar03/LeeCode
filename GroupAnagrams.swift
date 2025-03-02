//
//  Created by Muneesh Kumar on 21/02/25.
//

import Foundation

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        if strs.isEmpty {
            return []
        }
        var dict = [String: [String]]()
        for str in strs {
            let sortedStr = String(str.sorted())
            if dict[sortedStr] == nil {
                dict[sortedStr] = [str]
            } else {
                var previousStrings = dict[sortedStr]!
                previousStrings.append(str)
                dict[sortedStr] = previousStrings
            }
        }
        return Array(dict.values)
    }
}
