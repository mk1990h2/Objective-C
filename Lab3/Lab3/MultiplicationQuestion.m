//
//  MultiplicationQuestion.m
//  Lab3
//
//  Created by 佐藤美佳 on 2020/03/26.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

-(instancetype) init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    super.question = [NSString stringWithFormat:@"%@ * %@ ?", super.rightValue, super.leftValue];
    super.answer = [super.rightValue integerValue] * [super.leftValue integerValue];
}

@end
