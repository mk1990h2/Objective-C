//
//  GameController.h
//  Threelow
//
//  Created by 佐藤美佳 on 2020/04/07.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property NSArray *diceArray;
@property NSMutableArray *heldDices;
@property BOOL gameOver;

- (void) holdDice:(int) index;
- (void) resetDice;
- (void) rollDice;
- (void) printDicesAndScore;
- (void) end;

@end

NS_ASSUME_NONNULL_END
