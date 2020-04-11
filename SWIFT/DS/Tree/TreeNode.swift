//
//  TreeNode.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/10/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

import Foundation
class TreeNode {
    let val : Int
    var left :  TreeNode? = nil
    var right : TreeNode? = nil
    init(val : Int) {
        self.val = val
    }
}
