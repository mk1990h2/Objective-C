//
//  main.m
//  Lab3
//
//  Created by 佐藤美佳 on 2020/03/25.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"

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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"MATHS!");
        ScoreKeeper *sk = [[ScoreKeeper alloc] init];
        while (YES) {
            AdditionQuestion *q = [[AdditionQuestion alloc] init];
            NSString *input = [NSString stringWithString:getUserInput(5, q.question)];
            if ([input isEqualToString:@"quit"]) {
                NSLog(@"%@", [sk getScore]);
                break;
            }
            NSInteger inputInteger = [input integerValue];
            if ([q checkAnsswer:inputInteger]) {
                NSLog(@"Right!");
                [sk addRight];
            } else {
                NSLog(@"Wrong!");
                [sk addWrong];
            }
        }
    }
    return 0;
}
