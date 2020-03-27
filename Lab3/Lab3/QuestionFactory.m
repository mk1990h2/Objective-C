//
//  QuestionFactory.m
//  Lab3
//
//  Created by 佐藤美佳 on 2020/03/26.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (Question*) generateRandomQuestion {
    NSArray *questionSubs = @[@"AdditionQuestion", @"SubtractionQuestion", @"DivisionQuestion", @"MultiplicationQuestion"];
    NSNumber *num = [[NSNumber alloc] initWithUnsignedInt:arc4random_uniform(4)];
    return [[NSClassFromString(questionSubs[num.intValue]) alloc] init];
}

@end
