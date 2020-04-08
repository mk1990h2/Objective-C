//
//  main.m
//  Threelow
//
//  Created by 佐藤美佳 on 2020/04/07.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

Dice *dice1;
Dice *dice2;
Dice *dice3;
Dice *dice4;
Dice *dice5;

NSString *getUserInput(int maxLength, NSString *prompt) {
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@ ", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        // turn CString to NSString
        // NSString.stringWithUTF8String(inputChars)
        // .stringByTrimmingCharactersInSet(
        //      NSCharacterSet.whitespaceCharacterSet);
        return [[NSString stringWithUTF8String: inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

void rollAllDices() {
    [dice1 roll];
    [dice2 roll];
    [dice3 roll];
    [dice4 roll];
    [dice5 roll];
    NSLog(@"%@ %@ %@ %@ %@", [dice1 getDiceImage], [dice2 getDiceImage], [dice3 getDiceImage], [dice4 getDiceImage], [dice5 getDiceImage]);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        dice1 = [[Dice alloc] init];
        dice2 = [[Dice alloc] init];
        dice3 = [[Dice alloc] init];
        dice4 = [[Dice alloc] init];
        dice5 = [[Dice alloc] init];
        NSLog(@"%@ %@ %@ %@ %@", [dice1 getDiceImage], [dice2 getDiceImage], [dice3 getDiceImage], [dice4 getDiceImage], [dice5 getDiceImage]);
        while (true) {
            NSString *input = [NSString stringWithString:getUserInput(5, @"roll or quit")];
            if ([input isEqualToString:@"quit"]) {
                break;
            } else {
                rollAllDices();
            }
        }
    }
    return 0;
}
