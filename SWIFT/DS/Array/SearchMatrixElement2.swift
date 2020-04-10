//
//  SearchMatrixElement2.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/10/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

import Foundation
/*
 let matrix = [
   [1,   4,  7, 11, 15],
   [2,   5,  8, 12, 19],
   [3,   6,  9, 16, 22],
   [10, 13, 14, 17, 24],
   [18, 21, 23, 26, 30]
 ]
 print(searchMatrix(matrix, 22))
 */

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    if(matrix.count == 0 || matrix[0].count == 0 ){
        return false
    }
    var row = 0
    var col = matrix[0].count - 1
    while(row < matrix.count && col >= 0){
        if(matrix[row][col] == target){
            return true
        }
        if(matrix[row][col] > target){
            col = col - 1
        }
        else{
            row = row + 1
        }
    }
    return false
}
