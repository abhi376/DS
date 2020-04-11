//
//  TreeDiameter.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/12/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

import Foundation
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
