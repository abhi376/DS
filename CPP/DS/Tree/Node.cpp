//
//  Node.cpp
//  StairCase
//
//  Created by Abhishek Verma on 4/10/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

#include <stdio.h>
class Node {
public:
    int val;
    Node *left = nullptr;
    Node *right = nullptr;
    Node(int val){
        this->val = val;
    }
};
