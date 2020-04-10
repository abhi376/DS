//
//  GroupAnagram.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/10/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//
/*
 https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3288/
 Group Anagrams
 Solution
 Given an array of strings, group anagrams together.

 Example:

 Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
 Output:
 [
   ["ate","eat","tea"],
   ["nat","tan"],
   ["bat"]
 ]
 Note:

 All inputs will be in lowercase.
 The order of your output does not matter.
 */
import Foundation
func groupAnagrams(_ strs: [String]) -> [[String]] {
    var map : [String : [String]] = [String:[String]]()
    for item in strs {
        let sItem = String(item.sorted())
        var array : [String] = map[sItem] ?? [String]()
        array.append(item)
        map[sItem] = array
    }
    var resultArray : [[String]] = [[String]]()
    for values in map.values {
        resultArray.append(values)
    }
    return resultArray
    
}
