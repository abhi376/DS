//
//  ProductLessThanK.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/10/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

import Foundation
func getArrayCountProductLessK (array : [Int], k : Float80  ) -> Int {
    var res = 0
    var product : Float80 = 1
    var start = 0
    var end = 0
    let size = array.count
    // used sliding window concept
    // here we will continue to calculate the product from start,
    // as soon as the product exceed the value k, then start removing the element from left and
    // after removing the element divide the element untill the condition (product < k ) is not satisfied
    // finally use the len = end - start + 1 to get the length.
    while(end < size) {
        product = product * Float80(array[end])
        
        while (start < end && product >= k ) {
            product = (product) / Float80(array[start])
            start = start + 1
        }
        if(product < k) {
            let len = end - start + 1
            res = res + len
        }
        end = end + 1
        
    }
    
    
    return res
}

//print(getArrayCountProductLessK(array: [1, 9, 2, 8, 6, 4, 3], k: 100))
