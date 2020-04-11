//
//  MaxSumArray.cpp
//  StairCase
//
//  Created by Abhishek Verma on 4/11/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

#include <stdio.h>
#include <vector>
using namespace std;
int maxSubArray(const vector<int> &A) {
    int maxSum = INT_MIN;
       int currentSum = 0;
    bool isFoundPos = false;
        size_t n1 = A.size();
    for (int i = 0; i< n1; i++){
        if(currentSum + A[i] > 0){
            currentSum = currentSum + A[i];
            isFoundPos = true;

            if(maxSum < currentSum){
                maxSum = currentSum;
            }
        }
        else{
            if(isFoundPos){
                currentSum = 0;
            }
            else{
                maxSum = (maxSum > A[i]) ? maxSum : A[i];
            }
        }
        
       
    }
       return maxSum;
}
