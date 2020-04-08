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
    NSLog(@"%@", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        return [[NSString stringWithUTF8String: inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameController *gameController = [[GameController alloc] init];
        
        while (!gameController.gameOver) {
            [gameController printDicesAndScore];
            NSString *input = [NSString stringWithString:getUserInput(5, @"Choose action from below:\nroll\nhold\nreset")];
            if ([input isEqualToString:@"hold"]) {
                while (true) {
                    NSString *hold = [NSString stringWithString:getUserInput(5, @"Input the index of the dice to hold: ")];
                    if (0 < [hold intValue] && [hold intValue] < 6) {
                        [gameController holdDice:[hold intValue]];
                        break;
                    } else {
                        NSLog(@"Invalid index");
                    }

                }
                
            } else if ([input isEqualToString:@"reset"]) {
                [gameController resetDice];
            } else if ([input isEqualToString:@"roll"]) {
                [gameController rollDice];
            }
        }
        [gameController end];
    }
    return 0;
}
