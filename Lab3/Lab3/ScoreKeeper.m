//
//  ScoreKeeper.m
//  Lab3
//
//  Created by 佐藤美佳 on 2020/03/25.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype) init {
    if (self == [super init]) {
        _right = 0;
        _wrong = 0;
    }
    return self;
}

- (void) addRight {
    self.right += 1;
}

- (void) addWrong {
    self.wrong += 1;
}

- (NSString*) getScore {
    int percentage = 0;
    if (self.right + self.wrong != 0) {
        percentage = roundf((float) self.right / (self.right + self.wrong) * 100);
    }
    return [NSString stringWithFormat:@"score: %d right, %d wrong ---- %d%%", self.right, self.wrong, percentage];
}

@end
