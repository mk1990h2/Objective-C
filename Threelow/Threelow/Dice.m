//
//  Dice.m
//  Threelow
//
//  Created by 佐藤美佳 on 2020/04/07.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init {
    if (self == [super init]) {
        _value = [self generateNumber];
        _held = false;
    }
    return self;
}

- (int) generateNumber {
    return arc4random_uniform(6)+1;
}
- (void) roll {
    self.value = [self generateNumber];
}

- (NSString*) getDiceImage {
    switch (self.value) {
        case 1: return @"⚀";
        case 2: return @"⚁";
        case 3: return @"⚂";
        case 4: return @"⚃";
        case 5: return @"⚄";
        case 6: return @"⚅";
        default:
            return NULL;
    }
}

@end
