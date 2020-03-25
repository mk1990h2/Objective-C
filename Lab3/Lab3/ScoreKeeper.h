//
//  ScoreKeeper.h
//  Lab3
//
//  Created by 佐藤美佳 on 2020/03/25.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property int right;
@property int wrong;

- (void) addRight;
- (void) addWrong;
- (NSString*) getScore;

@end
