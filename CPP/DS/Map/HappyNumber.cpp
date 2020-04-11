//
//  HappyNumber.cpp
//  StairCase
//
//  Created by Abhishek Verma on 4/11/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

#include <stdio.h>
#include <unordered_map>
#include <vector>
using namespace std;
unordered_map<int, bool> map = {
        {0,false},
        {1,true}
};
bool isHappyUtility(int num){
    if(map.find(num) != map.end()){
        return map[num];
    }
    else{
        map[num] = false;
    }
    return false;
}
int getPowerSumOfNumber(int n){
    int sum = 0;
    while(n){
        int rem = n%10;
        n = n/10;
        sum += rem*rem;
    }
    return sum;
}
bool isHappy(int n) {
    vector<int> numbers;
    int num = n;
    bool isHappy = false;
    while(true){
        if(map.find(num) != map.end()){
            isHappy = map[num];
            break;
        }
        map[num] = false;
        numbers.push_back(num);
        num = getPowerSumOfNumber(num);
    };
    size_t size = numbers.size();
    for(int i = 0; i < size; i++){
        map[numbers[i]] = isHappy;
    }
    return isHappy;
}
