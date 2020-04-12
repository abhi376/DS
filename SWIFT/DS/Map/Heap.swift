//
//  Heap.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/11/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

import Foundation

struct Heap <T : Comparable>{
    var areInIncreasingOrder:(T, T) -> Bool
    var array : [T] = [T]()
    var size = 0
    init(by order : @escaping (T, T)  -> Bool) {
        areInIncreasingOrder = order
    }
    
    public mutating func poll() -> T? {
        if(array.count >= 0){
            let top = array[0]
            array[0] = array[array.count - 1]
            array.removeLast()
            percoladeDown(0)
            return top
        }
        else {
            return nil
        }
    }
    public func getTop()-> T?{
        if(array.count >= 0){
            return array[0]
        }
        else
        {
            return nil
        }
    }
    public func printHeap(){
        print(array)
    }
    public mutating func addItem(_ item : T){
        array.append(item)
        percoladeUp(index: array.count - 1)
    }
   
    private func parentIndex(_ index : Int)->Int {
        return (index-1)/2;
    }
    private func hasLeftChild(_ index : Int)->Bool {
        if((index*2 + 1) < array.count){
            return true
        }
        return false
    }
    private func hasParent(_ index : Int)->Bool {
        if(index != 0 && (index - 1)/2 >= 0){
            return true
        }
        return false
    }
    private func hasRightChild(_ index : Int)->Bool {
        if((index*2 + 2) < array.count){
            return true
        }
        return false
    }
    private func leftChild(_ index : Int)->Int{
        return (index*2 + 1)
    }
    private func rightChild(_ index : Int)->Int{
        return (index*2 + 2)
    }
    // in case of add
    private mutating func percoladeUp(index : Int){
        var currentIndex = index
        while(hasParent(currentIndex)){
            let pIndex = parentIndex(currentIndex)
            if(areInIncreasingOrder(array[pIndex] , array[currentIndex])){
                break
            }
            else {
                swap(currentIndex, pIndex)
                currentIndex = pIndex
                
            }
        }
    }
    
    // in case of delete
    private mutating func percoladeDown(_ index : Int){
        var currentIndex = index
        while(hasLeftChild(currentIndex)){
            let leftIndex = leftChild(currentIndex)
            if(hasRightChild(currentIndex)){
                let rightIndex = rightChild(currentIndex)
                if(areInIncreasingOrder(array[leftIndex] , array[rightIndex])){
                    if(areInIncreasingOrder(array[leftIndex] ,array[currentIndex])){
                        swap(leftIndex, currentIndex)
                        currentIndex = leftIndex
                    }
                    else{
                        break
                    }
                }
                else{
                    if(areInIncreasingOrder(array[rightIndex] , array[currentIndex])){
                        swap(rightIndex, currentIndex)
                        currentIndex = rightIndex
                    }
                    else{
                        break
                    }
                }
            }
            else{
                if(areInIncreasingOrder(array[leftIndex] , array[currentIndex])){
                    swap(leftIndex, currentIndex)
                    currentIndex = leftIndex
                }
                else{
                    break
                }
            }
            
        }
        
        
    }
    
    private mutating func swap(_ start : Int, _ end : Int){
        let temp = array[start]
        array[start] = array[end]
        array[end] = temp
    }
    
    
    
}
