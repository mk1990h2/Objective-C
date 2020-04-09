//
//  PaymentGateway.m
//  Lab10
//
//  Created by 佐藤美佳 on 2020/04/08.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount: (NSInteger) input {
    if([self.delegate canProcessPayment]) {
        [self.delegate pay:input];
    } else {
        NSLog(@"Sorry, your payment couldn't be processed.");
    }
    
}

@end
