//
//  StripePaymentService.h
//  Lab10
//
//  Created by 佐藤美佳 on 2020/04/08.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface StripePaymentService : NSObject<PaymentDelegate>

- (void) pay: (NSInteger) amount;
- (BOOL) canProcessPayment;

@end
