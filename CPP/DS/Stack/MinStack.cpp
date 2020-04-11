//
//  MinStack.cpp
//  StairCase
//
//  Created by Abhishek Verma on 4/11/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

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
