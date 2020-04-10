//
//  DeleteDuplicate.swift
//  TestMutable
//
//  Created by Abhishek Verma on 4/10/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

import Foundation


func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    if(head == nil || head?.next == nil){
        return head
    }
    var temp : ListNode? = head
    while(temp?.next != nil){
        if(temp?.val == temp?.next?.val ){
            temp?.next = temp?.next?.next
        }
        else{
            temp = temp?.next

        }
    }
    return head
    
}
