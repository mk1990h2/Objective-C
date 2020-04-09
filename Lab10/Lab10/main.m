//
//  main.m
//  Lab10
//
//  Created by 佐藤美佳 on 2020/04/08.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

NSString *getUserInput(int maxLength, NSString *prompt) {
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        return [[NSString stringWithUTF8String: inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int randomNum = arc4random_uniform(900) + 100;
        NSString *selectMethod = [NSString stringWithFormat:@"Thank you for shopping at Acme.com Your total today is $%d Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", randomNum];
        NSString *input = getUserInput(2, selectMethod);
        NSLog(@"%d", input.intValue);
        
        PaymentGateway *pg = [PaymentGateway new];
        
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        ApplePaymentService *apple = [ApplePaymentService new];
        switch (input.intValue) {
            case 1:
                pg.delegate = paypal;
                break;
            case 2:
                pg.delegate = stripe;
                break;
            case 3:
                pg.delegate = amazon;
                break;
            default:
                pg.delegate = apple;
                break;
        }
        
        [pg processPaymentAmount:randomNum];
    }
    return 0;
}
