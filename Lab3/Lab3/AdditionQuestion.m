//
//  AdditionQuestion.m
//  Lab3
//
//  Created by 佐藤美佳 on 2020/03/25.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype) init {
    if (self = [super init]) {
        NSNumber *num1 = [[NSNumber alloc] initWithUnsignedInt:arc4random_uniform(100)];
        NSNumber *num2 = [[NSNumber alloc] initWithUnsignedInt:arc4random_uniform(100)];
        _question = [NSString stringWithFormat:@"%@ + %@ ?", num1, num2];
        _answer = [num1 integerValue] + [num2 integerValue];
    }
    return self;
}

- (BOOL) checkAnsswer:(NSInteger) input {
    return input == self.answer;
}

@end
