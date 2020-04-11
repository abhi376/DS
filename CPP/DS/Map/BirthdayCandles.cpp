//
//  BirthdayCandles.cpp
//  StairCase
//
//  Created by Abhishek Verma on 4/11/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

#include <stdio.h>
#include "stdc++.h"
using namespace std;
/*
 map are ordered map which internally implements min heap.
 in this question we have to find the candles with maximum count.
 so we have used max heap.
 important to note that comperator function is being passed as an argument to make it max heap.
 */
int birthdayCakeCandles(vector<int> ar) {
    if(ar.size() == 0){
        return 0;
    }
    std::map<int,int,greater<int>> map = std::map<int,int,greater<int>>();

    for(auto item = ar.begin(); item != ar.end() ; item++){
        map[*item]++;
    }
    return map.begin()->second;
}
