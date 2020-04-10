//
//  StringReversal.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/10/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

import Foundation

//  reverse a string using recursion

func reverseStringWithIteration(input : inout String)->String {
    var output = ""
    for c in input {
        output = "\(c)" + output
    }
    return output
}

var string = "ABCDEFG"

func reverseStringRecursion(input : String,index : Int)-> String {
    if index == input.count {
        return ""
    }
    let currentIndex = string.index(input.startIndex, offsetBy: index)
    let output = reverseStringRecursion(input: input, index: (index + 1)) + "\(input[currentIndex])"
    return output
}

//print(reverseStringWithIteration(input: &string))
//print(reverseStringRecursion(input: string, index: 0))
