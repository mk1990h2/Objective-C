//
//  GameController.m
//  Threelow
//
//  Created by 佐藤美佳 on 2020/04/07.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import "GameController.h"

@implementation GameController

int count = 1;

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

- (void) holdDice:(int) index {
    if ([self.heldDices containsObject:self.diceArray[index-1]]) {
        [self.heldDices removeObject:self.diceArray[index-1]];
    } else {
        [self.heldDices addObject:self.diceArray[index-1]];
    }
}

- (void) resetDice {
    [self.heldDices removeAllObjects];
}

- (void) rollDice {
    for (int i = 0; i < self.diceArray.count; i++) {
        if ([self.heldDices containsObject:self.diceArray[i]]) {
            continue;
        }
        [self.diceArray[i] roll];
    }
    count++;
    self.gameOver = count == 5;
}

- (void) printAllDices {
    // Current Dice
    NSString *str = @"";
    
    for (Dice *dice in self.diceArray) {
        if ([str isEqualToString:@""]) {
            str = [str stringByAppendingString:[dice getDiceImage]];
        } else {
            str = [str stringByAppendingFormat:@" %@", [self getDiceString:dice]];
        }
    }
    
    NSLog(@"%@", str);
}

- (NSString*) getDiceString: (Dice*) dice {
    if ([self.heldDices containsObject:dice]) {
        return [NSString stringWithFormat:@"[%@]", [dice getDiceImage]];
    }
    return [dice getDiceImage];
}

- (void) printScore {
    // Current score
    int score = 0;
    for (Dice *dice in self.heldDices) {
        score += [dice value];
    }
    NSLog(@"Score: %d", score);
}

- (void) printDicesAndScore {
    [self printAllDices];
    [self printScore];
}

- (void) end {
    NSLog(@"=====Game Over=====");
    int score = 0;
    for (Dice *dice in self.diceArray) {
        score += [dice value];
    }
    NSLog(@"Your final score: %d", score);
}



@end
