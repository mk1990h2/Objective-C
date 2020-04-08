//
//  main.m
//  Threelow
//
//  Created by 佐藤美佳 on 2020/04/07.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NSString *getUserInput(int maxLength, NSString *prompt) {
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@ ", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        return [[NSString stringWithUTF8String: inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

void rollAllDices(NSArray *diceArray) {
    for (int i = 0; i < diceArray.count; i++) {
        [diceArray[i] roll];
    }
}

void printAllDices(NSArray *diceArray) {
    NSString *str = @"";
    NSString *space = @" ";
    for (int i = 0; i < diceArray.count; i++) {
        if (i == diceArray.count-1) space = @"";
        [str stringByAppendingFormat:@"%@%@", [diceArray[i] getDiceImage], space];
    }
    NSLog(@"%@", str);

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (true) {
            NSString *input = [NSString stringWithString:getUserInput(5, @"roll or quit")];
            if ([input isEqualToString:@"quit"]) {
                break;
            } else {
            }
        }
    }
    return 0;
}
