//
//  GameController.m
//  Threelow
//
//  Created by 佐藤美佳 on 2020/04/07.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import "GameController.h"

@implementation GameController

int count = 0;

- (instancetype)init
{
    self = [super init];
    if (self) {
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        _diceArray = @[dice1, dice2, dice3, dice4, dice5];
        _heldDices = [[NSMutableArray  alloc] init];
        _gameOver = NO;

    }
    return self;
}

- (void) holdDie:(int) index {
    if ([self.heldDices containsObject:self.diceArray[index-1]]) {
        [self.heldDices removeObject:self.diceArray[index-1]];
    } else {
        [self.heldDices addObject:self.diceArray[index-1]];
    }
}

- (void) rollDice {
    for (int i = 0; i < self.diceArray.count; i++) {
        if ([self.heldDices containsObject:self.diceArray[i]]) {
            continue;
        }
        [self.diceArray[i] roll];
        count++;
        self.gameOver = count == 5;
    }
}

- (void) printAllDice {
    NSString *str = @"";
    NSString *space = @" ";
    
    for (int i = 0; i < self.diceArray.count; i++) {
        if (i == self.diceArray.count-1) space = @"";
        NSString *printDiceStr;
        if ([self.heldDices containsObject:self.diceArray[i]]) {
            printDiceStr = [NSString stringWithFormat:@"%@%@%@", @"[", [self.diceArray[i] getDiceImage], @"]"];
        } else {
            printDiceStr = [self.diceArray[i] getDiceImage];
        }
        [str stringByAppendingFormat:@"%@%@", printDiceStr, space];
    }
    
    NSLog(@"%@", str);
}



@end
