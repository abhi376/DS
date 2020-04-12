//
//  HeapDataType.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/12/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

import Foundation
struct HeapDataType : Comparable {
    static func < (lhs: HeapDataType, rhs: HeapDataType) -> Bool {
        lhs.key < rhs.key
    }
    let key : Int
    let value : Int
}
