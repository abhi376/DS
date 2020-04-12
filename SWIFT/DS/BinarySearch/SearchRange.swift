//
//  SearchRange.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/12/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//
/*
Given an array of integers nums sorted in ascending order, find the starting and ending position of a given target value.

Your algorithm's runtime complexity must be in the order of O(log n).

If the target is not found in the array, return [-1, -1].

Example 1:

Input: nums = [5,7,7,8,8,10], target = 8
Output: [3,4]
Example 2:

Input: nums = [5,7,7,8,8,10], target = 6
Output: [-1,-1]
 */
import Foundation
func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var res = [-1,-1]
    let leftMostRange = leftMostIndex(nums, target)
    if(leftMostRange == -1){
        return res
    }
    let rightMostRange = rightMostIndex(nums, target)
    
    res[0] = leftMostRange
    res[1] = rightMostRange
    return res
}
func leftMostIndex(_ nums:[Int],_ target : Int)->Int{
    var start = 0
    var end = nums.count - 1
    while(start <= end){
        let mid = start + (end-start)/2
        if(nums[mid] > target){
            end = mid - 1
        }
        else if(nums[mid] < target){
            start = mid + 1
        }
        else{
            if(mid == 0){
                return mid
            }
            else if(mid - 1 >= 0 && nums[mid-1] != nums[mid]){
                return mid
            }
            else{
                end = mid - 1
            }
        }
        
    }
    return -1
    
}
func rightMostIndex(_ nums:[Int],_ target : Int)->Int{
    var start = 0
    var end = nums.count - 1
    while(start <= end){
        let mid = start + (end-start)/2
        if(nums[mid] > target){
            end = mid - 1
        }
        else if(nums[mid] < target){
            start = mid + 1
        }
        else{
            if(mid == nums.count - 1 ){
                return mid
            }
            else if(mid + 1 <= nums.count - 1 && nums[mid+1] != nums[mid]){
                return mid
            }
            else{
                start = mid + 1
            }
        }
        
    }
    return -1
    
}
