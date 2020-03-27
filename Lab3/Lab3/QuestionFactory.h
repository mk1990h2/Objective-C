//
//  QuestionFactory.h
//  Lab3
//
//  Created by 佐藤美佳 on 2020/03/26.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

- (Question*) generateRandomQuestion;

@end

