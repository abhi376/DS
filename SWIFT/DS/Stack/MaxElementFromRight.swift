//
//  MaxElementFromRight.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/10/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

import Foundation

func maxValueFromRight(array : inout [Int]) ->[Int] {
    var stack : [Int] = [Int]()
    var top = -1
    var index = array.count - 1
    while (index >= 0) {
        if(stack.isEmpty == true){
            top = top + 1
            stack.append(array[index])
            array[index] = -1
        }
        else {
                while(stack.last != nil && stack.last! < array[index] )
                {
                    stack.removeLast()
                    
                }
            if stack.last != nil {
                let temp = array[index]
                array[index] = stack.last!
                stack.append(temp)
                
            }
            else {
                stack.append(array[index])
                array[index] = -1
            }
            
        }
        index = index - 1
    }
    return array
}
var array = [1, 9, 2, 8, 6, 4, 13]
//print(maxValueFromRight(array: &array))
