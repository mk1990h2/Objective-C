//
//  main.m
//  Threelow
//
//  Created by 佐藤美佳 on 2020/04/07.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

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


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int count = 0;
        GameController *gameController = [GameController new];
        
        while (!gameController.gameOver) {
            NSString *input = [NSString stringWithString:getUserInput(5, @"Choose action from below:\nRoll\nHold\n")];
            if ([input isEqualToString:@"Hold"]) {
                NSString *hold = [NSString stringWithString:getUserInput(5, @"Input the index of the dice to hold\n")];
                [gameController holdDie:[hold intValue]];
            } else if ([input isEqualToString:@"Roll"]) {
                
            }
        }
    }
    return 0;
}
