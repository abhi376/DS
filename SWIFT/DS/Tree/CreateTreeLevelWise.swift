//
//  CreateTreeLevelWise.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/10/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

import Foundation

// -------------------------------------------------------------
// Create a tree from an array [10,20,30,40,50,60]
//
/*             10
            /      \
           20       30
          /  \     /
        40    50  60
*/

func createTreeLevelWiseFromArray(array : [Int]){
    let root = TreeNode(val: array[0])
    var queue : [TreeNode] = [TreeNode]()
    queue.append(root)
    var index = 1
    while queue.isEmpty {
        _ = queue.first
        if(index < array.count){
            let leftNode = TreeNode(val: array[index])
            root.leftChild = leftNode
            queue.append(leftNode)
            index += 1
        }
        if(index < array.count){
            let rightChild = TreeNode(val: array[index])
            root.rightChild = rightChild
            queue.append(rightChild)
            index += 1
        }
        
    }
}
