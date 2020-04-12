//
//  TopKFrequentElement.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/12/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

import Foundation
/*
 Given a non-empty array of integers, return the k most frequent elements.

 Example 1:

 Input: nums = [1,1,1,2,2,3], k = 2
 Output: [1,2]
 Example 2:

 Input: nums = [1], k = 1
 Output: [1]
 Note:

 You may assume k is always valid, 1 ≤ k ≤ number of unique elements.
 Your algorithm's time complexity must be better than O(n log n), where n is the array's size.
 */
class TopKFrequentElement {
    
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var res = [Int]()
        var dic = [Int : Int]()
        for item in nums {
            dic[item] = dic[item , default: 0] + 1
        }
        var heap :Heap<HeapDataType> = Heap<HeapDataType>(by: >)
        for (key,value) in dic {
            let heapDT = HeapDataType(key: value, value: key)
            heap.addItem(heapDT)
        }
        var frequency = 0
        while(frequency < k){
            res.append(heap.poll()?.value ?? 0)
            frequency += 1
        }
        return res
    }
    
}
