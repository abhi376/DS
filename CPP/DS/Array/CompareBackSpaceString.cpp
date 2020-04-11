//
//  CompareBackSpaceString.cpp
//  StairCase
//
//  Created by Abhishek Verma on 4/11/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

#include <stdio.h>
#include "stdc++.h"
using namespace std;
bool backspaceCompare(string S, string T) {
    int slen = int(S.length()-1);
    int tlen = int(T.length()-1);
    if(slen == 0 && tlen == 0){
        return true;
    }
    int hashCount1 = 0;
    int hashCount2 = 0;
    while (slen >= 0 || tlen >= 0)
    {
        if(slen >= 0){
            if(S[slen] == '#'){
                hashCount1++;
                slen--;
            }
            else{
                if(hashCount1 >0 && slen >=0 && S[slen] != '#'){
                    hashCount1--;
                    slen--;
                }
               
            }

        }
        if(tlen >= 0){
            if(T[tlen] == '#'){
                hashCount2++;
                tlen --;
            }
            else{
                if(hashCount2 >0 && tlen >=0 && T[tlen] != '#'){
                    hashCount2--;
                    tlen--;
                }
            }

        }
        
        if((hashCount1 > 0 && slen >= 0) ||( hashCount2 > 0 && tlen >= 0)) {
            continue;
        }
        if((slen >= 0 && S[slen] == '#') || (tlen >=0 && T[tlen] == '#')) {
            continue;
        }
        if(slen < 0 && tlen >= 0){
            return false;
        }
        if(slen >=0 && tlen < 0){
            return false;
        }
        if(slen>=0 && tlen>=0 && S[slen] != T[tlen]){
            return false;
        }
        if(slen >=0){
            slen--;
        }
        if(tlen >= 0){
            tlen--;
        }
    }
    
    return true;
}
