//
//  AddBinaryString.cpp
//  StairCase
//
//  Created by Abhishek Verma on 4/11/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

#include <stdio.h>
#include <string>
using namespace std;

string resultAddOperation(string a, string b,int a1, int b1){
    string res = "";
    int carry = 0;
    for(int i = b1-1; i >= 0; i-- ){
        int ca = a[i] - '0';
        char cb = b[i] - '0';
        int val = ca+cb+carry;
        switch (val) {
            case 0:
                res = "0" + res;
                carry = 0;
                break;
            case 1:
                res = "1" + res;
                carry = 0;
                break;
            case 2:
                res = "0" + res;
                carry = 1;
                break;
            case 3:
                res = "1" + res;
                carry = 1;
                break;
            default:
                break;
        }
        
    }
    for (int i = a1-b1-1; i>=0; i--) {
        int ca = a[i] - '0';
        int val = ca+carry;
        switch (val) {
            case 0:
                res = "0" + res;
                carry = 0;
                break;
            case 1:
                res = "1" + res;
                carry = 0;
                break;
            case 2:
                res = "0" + res;
                carry = 1;
                break;
            case 3:
                res = "1" + res;
                carry = 1;
                break;
            default:
                break;
        }
    }
    if(carry == 1){
        res = "1" + res;
    }
    
    return res;
}


string binaryAddString(string a, string b){
    string result = "";
    int lena = a.length();
    int lenb = b.length();
    
    if(lenb == 0){
        return a;
    }
    if(lena == 0){
        return b;
    }
    
    int carry = 0;
    int lenDif = lena - lenb;
    if(lenDif >=0){
        return resultAddOperation(a, b, lena, lenb);
    }
    else{
        return resultAddOperation(b, a, lenb, lena);
    }
    
    return  result;
}
