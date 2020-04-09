//
//  PaymentGateway.h
//  Lab10
//
//  Created by 佐藤美佳 on 2020/04/08.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate

@optional

@required
- (void) pay: (NSInteger) amount;
- (BOOL) canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, strong) id<PaymentDelegate> delegate;
- (void) processPaymentAmount: (NSInteger) input;

@end
