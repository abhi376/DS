//
//  AddTwoListNumber.cpp
//  StairCase
//
//  Created by Abhishek Verma on 4/11/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

#include <stdio.h>
#include "LinkNode.cpp"
ListNode* addTwoNumbers(ListNode* l1, ListNode* l2) {
    ListNode * resultNode = nullptr;
    ListNode * current = nullptr;
    int carry = 0;
    while (l1 != nullptr && l2 != nullptr) {
        int val = (carry + l1->val + l2->val);
        ListNode *temp = new ListNode(val%10);
        carry = val/10;
        if(resultNode == nullptr){
            resultNode = temp;
            current = temp;
        }
        else
        {
            current->next = temp;
            current = current->next;
        }
        l1 = l1->next;
        l2 = l2->next;
    }
    if(l1 == nullptr){
        while (l2 != nullptr) {
            int val = (carry + l2->val);
            ListNode *temp = new ListNode(val%10);
            carry = val/10;
            current->next = temp;
            current = current->next;
            l2 = l2->next;
        }
    }
    if(l2 == nullptr){
        while (l1 != nullptr) {
            int val = (carry + l1->val);
            ListNode *temp = new ListNode(val%10);
            carry = val/10;
            current->next = temp;
            current = current->next;
            l1 = l1->next;
        }
    }
    if(carry != 0){
        ListNode *temp = new ListNode(carry);
        current->next = temp;
        current = current->next;
    }
    current->next = nullptr;
    return resultNode;
}
