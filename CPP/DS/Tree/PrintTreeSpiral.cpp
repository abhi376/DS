//
//  PrintTreeSpiral.cpp
//  StairCase
//
//  Created by Abhishek Verma on 4/11/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

#include <stdio.h>
#include "Node.cpp"
#include "../stdc++.h"
using namespace std;
void printTreeInSpiral(Node *root) {
    Node * start = root;
    queue<Node*> queue;
    queue.push(start);
    
    while (!queue.empty()) {
        Node * temp = queue.front();
        if(temp == nullptr){
            cout << endl;
        }
        else {
            if(temp->left != nullptr){
                queue.push(temp->left);
            }
            if(temp->right != nullptr){
                queue.push(temp->right);
            }
            cout << temp->val;
        }
    }
    
    
}
