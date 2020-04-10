//
//  MoveZeroToEnd.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/10/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//
//https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3286/
/*Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Example:

Input: [0,1,0,3,12]
Output: [1,3,12,0,0]
Note:

You must do this in-place without making a copy of the array.
Minimize the total number of operations.*/

import Foundation

func moveZeroes(_ nums: inout [Int]) {
    var zeroCount = 0;
    var i = 0
    let size = nums.count
    var currentNonZeroIndex = 0
    while(i < size){
        if(nums[i] != 0){
            if(currentNonZeroIndex < i){
                nums[currentNonZeroIndex] = nums[i]
            }
            currentNonZeroIndex += 1

            
        }
        else{
           zeroCount += 1
        }
        i += 1
    }
    while(currentNonZeroIndex < size){
        nums[currentNonZeroIndex] = 0
        currentNonZeroIndex += 1
    }
}
