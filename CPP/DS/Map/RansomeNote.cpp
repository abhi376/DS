//
//  RansomeNote.cpp
//  StairCase
//
//  Created by Abhishek Verma on 4/11/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

#include <stdio.h>
#include <unordered_map>
#include <string>
using namespace std;
bool canConstruct(string ransomNote, string magazine) {
   size_t M = ransomNote.length();
   size_t N = magazine.length();
   if(N == 0 && M == 0 || M == 0){
       return true;
   }
    int val = N - M;
    if( val < 0){
        return false;
    }
    unordered_map<char, int> map;
    for(int i = 0; i < N; i++){
        int charValue = magazine[i] - 0;
        map[charValue]++;
    }
    for(int i = 0; i < M; i++){
        int charValue = ransomNote[i] - 0;
        if (map[charValue] == 0){
            return false;
        }
        map[charValue]--;

    }
    return true;

}
