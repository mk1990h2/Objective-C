//
//  StripePaymentService.m
//  Lab10
//
//  Created by 佐藤美佳 on 2020/04/08.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void) pay: (NSInteger) amount {
    NSLog(@"Stripe processed amount $%ld", amount);
}
- (BOOL) canProcessPayment {
    int randomNum = arc4random_uniform(2);
    return randomNum == 1;
}

@end
