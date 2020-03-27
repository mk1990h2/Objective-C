//
//  AdditionQuestion.m
//  Lab3
//
//  Created by 佐藤美佳 on 2020/03/25.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype) init {
    if (self = [super init]) {
        _rightValue = [[NSNumber alloc] initWithUnsignedInt:arc4random_uniform(100)];
        _leftValue = [[NSNumber alloc] initWithUnsignedInt:arc4random_uniform(100)];
        _startTime = [NSDate date];
    }
    return self;
}

- (BOOL) checkAnswer:(NSInteger) input {
    _endTime = [NSDate date];
    return input == self.answer;
}

- (NSTimeInterval) answerTime {
    return [self.endTime timeIntervalSinceDate:self.startTime];
}

- (void) generateQuestion {
    
}

@end
