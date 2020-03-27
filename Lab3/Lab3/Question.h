//
//  AdditionQuestion.h
//  Lab3
//
//  Created by 佐藤美佳 on 2020/03/25.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property NSNumber *rightValue;
@property NSNumber *leftValue;
@property NSString *question;
@property NSInteger answer;
@property NSDate *startTime;
@property NSDate *endTime;

- (BOOL) checkAnswer:(NSInteger) input;
- (NSTimeInterval) answerTime;
- (void) generateQuestion;

@end
