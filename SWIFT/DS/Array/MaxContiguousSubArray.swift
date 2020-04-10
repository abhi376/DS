//
//  MaxContiguousSubArray.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/10/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3285/
/*
 Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

 Example:

 Input: [-2,1,-3,4,-1,2,1,-5,4],
 Output: 6
 Explanation: [4,-1,2,1] has the largest sum = 6.
 Follow up:

 If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.
 */
import Foundation
func maxSubArray(_ nums: [Int]) -> Int {
    var maxSum = Int.min;
    var currentSum = 0;
    let len = nums.count;
    
    var i = 0;
    while(i < len)
   {
       currentSum = currentSum + nums[i];
       if(currentSum > maxSum){
            maxSum = currentSum;
        }
       if(currentSum < 0){
           
        currentSum = max(a: currentSum,b: nums[i]);
           if(currentSum > maxSum){
                maxSum = currentSum;
            }
           if(currentSum < 0){
               currentSum = 0;
           }
           
       }
    i += 1;
   }
    return maxSum;
}
func max( a : Int,  b : Int)->Int{
    return a > b ? a : b;
    
}
