//
//  LargestRectangle.cpp
//  StairCase
//
//  Created by Abhishek Verma on 4/11/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

#include <stdio.h>
#include <vector>
#include <stack>
using namespace std;

int calculateArea(int i , stack<int>st,int top,vector<int>& array){
    if(st.empty()){
        return array[top]*i;
    }
    else{
        int currentTop = st.top();
        return array[top]*(i-currentTop-1);
    }
}
int largestRectangleArea(vector<int>& heights){
     size_t n = heights.size();
    int maxArea = -1;
    stack<int> stackDS;
    int currentArea  = -1;
    int i = 0;
    for(; i < n; i++){
        
        if(stackDS.empty()){
            stackDS.push(i);
        }
        else {
            int top = stackDS.top();
            if(heights[top] <= heights[i]){
                stackDS.push(i);
            }
            else{
                while (!stackDS.empty()) {
                    top = stackDS.top();
                    if(heights[top] > heights[i]){
                        stackDS.pop();
                        currentArea = calculateArea(i, stackDS, top, heights);
                        if(maxArea < currentArea){
                            maxArea = currentArea;
                        }
                    }
                    else{
                        break;
                    }
                    
                }
                stackDS.push(i);
            }
        }
        
        
    }
    while (!stackDS.empty()) {
       int top = stackDS.top();
        stackDS.pop();
        currentArea = calculateArea(i, stackDS, top, heights);
        if(maxArea < currentArea){
            maxArea = currentArea;
        }
    }
    
    return maxArea;
}
