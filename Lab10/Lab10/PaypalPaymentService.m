//
//  PaypalPaymentService.m
//  Lab10
//
//  Created by 佐藤美佳 on 2020/04/08.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void) pay: (NSInteger) amount {
    NSLog(@"Paypal processed amount $%ld", amount);
}
- (BOOL) canProcessPayment {
    int randomNum = arc4random_uniform(2);
    return randomNum == 1;
}

@end
