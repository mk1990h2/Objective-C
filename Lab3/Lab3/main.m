//
//  main.m
//  Lab3
//
//  Created by 佐藤美佳 on 2020/03/25.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

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
        QuestionManager *qm = [[QuestionManager alloc] init];
        QuestionFactory *qf = [[QuestionFactory alloc] init];
        
        while (YES) {
            Question *q = [qf generateRandomQuestion];
            [qm.questions addObject:q];
            
            // get user input
            NSString *input = [NSString stringWithString:getUserInput(5, q.question)];
            
            if ([input isEqualToString:@"quit"]) {
                break;
            }
            NSInteger inputInteger = [input integerValue];
            if ([q checkAnswer:inputInteger]) {
                NSLog(@"Right!");
                [sk addRight];
            } else {
                NSLog(@"Wrong!");
                [sk addWrong];
            }
            
            NSLog(@"%@", [sk getScore]);
            NSLog(@"%@", [qm timeOutput]);
        }
    }
    return 0;
}
