//
//  MatrixRiverSize.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/10/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

import Foundation
//​You are given a two-dimensional array (matrix) of potentially unequal height and width containing only 0s and 1s. Each 0 represents land, and each 1 represents part of a river. A river consists of any number of 1s that are either horizontally or vertically adjacent (but not diagonally adjacent). The number of adjacent 1s forming a river determine its size. Write a function that returns an array of the sizes of all rivers represented in the input matrix. Note that these sizes do not need to be in any particular order.
// 0 -> land
// 1 - river
let inputArray : [[Int]] = [
    [1,0,0,1,0],
    [1,0,1,0,0],
    [0,0,1,0,1],
    [1,0,1,0,1],
    [1,0,1,1,0],
]

func riverSizes(_ matrix: [[Int]]) -> [Int] {
    guard (matrix.count > 0) else{
        return []
    }
    let ROW = [0,0,1,-1]
    let COL = [1,-1,0,0]
    let N = matrix.count
    let M = matrix[0].count
    var solution = [Int]()
    var visited : [[Bool]] = Array(repeating: Array(repeating: false, count: M), count: N)
    for row in 0..<N {
        for col in 0..<M {
            if(matrix[row][col] == 1 && visited[row][col] == false) {
                visited[row][col] = true
                let count =  getConnected(matrix: matrix, visited: &visited, row: row, col: col, N: N, M: M, ROW: ROW, COL: COL)
                solution.append(count)
            }
        }
    }
    return solution
}
func getConnected(matrix :[[Int]],  visited : inout [[Bool]], row : Int, col : Int, N : Int, M : Int, ROW : [Int], COL : [Int])-> Int{
    
    var count = 1
    for index in 0...3 {
        let colN = col + COL[index]
        let rowN = row + ROW[index]
        if(rowN < N && rowN >= 0 && colN >= 0 && colN < M && visited[rowN][colN] == false && matrix[rowN][colN] == 1 ) {
            visited[rowN][colN]  = true
            count = count + getConnected(matrix: matrix, visited: &visited, row: rowN, col: colN, N: N, M: M, ROW: ROW, COL: COL)
        }
    }
    
    return count
}
//print(riverSizes(inputArray))

