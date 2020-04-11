//
//  MinStack.cpp
//  StairCase
//
//  Created by Abhishek Verma on 4/11/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//
/*
 Solution
 Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

 push(x) -- Push element x onto stack.
 pop() -- Removes the element on top of the stack.
 top() -- Get the top element.
 getMin() -- Retrieve the minimum element in the stack.
  

 Example:

 MinStack minStack = new MinStack();
 minStack.push(-2);
 minStack.push(0);
 minStack.push(-3);
 minStack.getMin();   --> Returns -3.
 minStack.pop();
 minStack.top();      --> Returns 0.
 minStack.getMin();   --> Returns -2.
 https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3292/
 */
#include <stdio.h>
#include <stack>

using namespace std;
class MinStack {
public:
    /** initialize your data structure here. */
    
    stack<int> minStack;
    stack<int> stack;
    MinStack() {
        
    }
    
    void push(int x) {
        
        if(minStack.empty() || minStack.top() >= x){
            minStack.push(x);
        }
        stack.push(x);
    }
    
    void pop() {
        if(!stack.empty()){
            if(stack.top() == minStack.top()){
                minStack.pop();
            }
            stack.pop();
        }
    }
    
    int top() {
        return stack.top();
    }
    
    int getMin() {
        return minStack.top();
    }
};
