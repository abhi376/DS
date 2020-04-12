//
//  TreeDiameter.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/12/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

import Foundation
/*
 Given a binary tree, you need to compute the length of the diameter of the tree. The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.

 Example:
 Given a binary tree
           1
          / \
         2   3
        / \
       4   5
 Return 3, which is the length of the path [4,2,1,3] or [5,2,1,3].

 Note: The length of path between two nodes is represented by the number of edges between them.
 */
func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
      if let _root = root{
          let leftDiameter = diameterOfBinaryTree(_root.left)
          let rightDiameter = diameterOfBinaryTree(_root.right)
          
          return max(max(leftDiameter,rightDiameter), (height(_root.left)+height(_root.right)))
      }
      else {
          return 0
      }
  }
  func height(_ node : TreeNode?)->Int{
      if let _node = node{
          return (max(height(_node.left),height(_node.right)) + 1)
      }
      else{
          return 0
      }
  }
