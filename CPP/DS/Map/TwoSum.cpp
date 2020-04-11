//
//  TwoSum.cpp
//  StairCase
//
//  Created by Abhishek Verma on 4/11/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

#include <stdio.h>
#include <unordered_map>
#include <vector>
using namespace std;
std::vector<int> twoSum(vector<int>& nums, int target) {
    unordered_map<int, int> map;
    vector<int> vector ;
    int i = 0;
    for (auto it = nums.begin();it !=  nums.end() ; it++) {
        map[*it] = i;
        i++;
    }
    int j = 0;
    for (auto it = nums.begin();it !=  nums.end() ; it++) {
        int index = target - *it;
        auto posIter = map.find(index);
        if(posIter != map.end() && posIter-> second != j)
        {
            vector.push_back(j);
            vector.push_back(posIter->second);
            break;
        }
        j++;
    }
    return vector;
}
