//
//  LongestSubString.cpp
//  StairCase
//
//  Created by Abhishek Verma on 4/11/20.
//  Copyright © 2020 Abhishek Verma. All rights reserved.
//

#include <stdio.h>
#include "stdc++.h"
using namespace std;
int lengthOfLongestSubstring(string s) {
    int length = 0;
    int maxLen = 0;
    // map which represet an integer array of size 4.
    // each integer has 32 bit (assuming 4byte compiler
    // so 4 integer will give us 32*4 = 256 bit, which is exact number of possible characters
    // initialize map with all 0
    int map[] = {0,0,0,0};
    size_t stringlen = s.length();
    // previous index where the first occurance of repeating character found.
    int startIndex = 0;
    for (int i = 0; i < stringlen; i++){
        char c = s[i];
        int pos = c - 0; // character position in ascii table (range from 0 to 255)
        // so based on pos, chose which bit position of selected array integer need to be updated.
        //(0th bit , 1st bit ... 31st bit)
        int index = pos%32;
        // which integer of array need to be updated (0th, 1st, 2nd or 3rd)
        int arrayIndex = pos/32;
        
        // if the integer of map has not set bit position , then increment the length and set the bit position.
        if ((1<<index & map[arrayIndex]) == false){
            length++;
            map[arrayIndex] = map[arrayIndex] | (1<<index);
        }
        else {
            // if the bit position is already set, that means we have found a duplicate character.
            // so start iterating from startIndex until we found our first match where duplicate character found.
            // reset the bit so on map[arrayIndex]
            // now these bits are available for further consideration as we iterate the string.
            int j = startIndex;
            for ( ; s[j] != s[i] ; j++){
                char c = s[j];
                int pos = c - 0;
                int index = pos%32;
                int arrayIndex = pos/32;
                map[arrayIndex] = (map[arrayIndex] & (~(1<<index)));
               
            }
            // check for max length
            if(maxLen < length){
                maxLen = length;
            }
            // mark start index as the position just next to the first occurance of duplicate characters occurs.
            startIndex = j+1;
            // reset the lenth excluding all bits which has been reset so far.
            length = i - startIndex + 1;

        }
    }
    if(maxLen < length){
        maxLen = length;
    }
    return maxLen;
    
}
