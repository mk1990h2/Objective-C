//
//  main.m
//  Lab1
//
//  Created by 佐藤美佳 on 2020/03/23.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(int maxLength, NSString *prompt) {
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@ ", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        // turn CString to NSString
        // NSString.stringWithUTF8String(inputChars)
        // .stringByTrimmingCharactersInSet(
        //      NSCharacterSet.whitespaceCharacterSet);
        return [[NSString stringWithUTF8String: inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (YES) {
            NSMutableString *strInput = [NSMutableString stringWithString: getUserInput(255, @"\nEnter your String: ('q' to quit")];
            if ([strInput isEqualToString:@"q"]) {
                break;
            }
            while (YES) {
                NSMutableString *option = [NSMutableString stringWithString: getUserInput(10, @"\nChoose one of the following options\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Resond\n6. De-Space-It\n7. Count words\n8. Done\n")];
                if ([option isEqualToString:@"8"]) {
                    break;
                } else if ([option isEqualToString:@"1"]) {
                    NSLog(@"%@", [strInput uppercaseString]);
                } else if ([option isEqualToString:@"2"]) {
                    NSLog(@"%@", [strInput lowercaseString]);
                } else if ([option isEqualToString:@"3"]) {
                    // check if strInput is number
                    // NSNumberFormatter fomatter = new NSNumberFormatter();
                    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
                    NSNumber *number = [formatter numberFromString: strInput];
                    if (number != nil) {
                        // integerValue is Long value
                        NSLog(@"%ld", [number integerValue]);
                    } else {
                        NSLog(@"%@", @"Input cannot be converted to Integer");
                    }
                } else if ([option isEqualToString:@"4"]) {
                    NSLog(@"%@", [strInput stringByAppendingString:@", eh?"]);
                } else if ([option isEqualToString:@"5"]) {
                    if ([strInput characterAtIndex:[strInput length] - 1] == '?') {
                        NSLog(@"%@", @"I don't know");
                    } else if ([strInput characterAtIndex:[strInput length] - 1] == '!') {
                        NSLog(@"%@", @"Whoa, calm down!");
                    }
                } else if ([option isEqualToString:@"6"]) {
                    NSLog(@"%@", [strInput stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                } else if ([option isEqualToString:@"7"]) {
                    NSLog(@"%ld", [[strInput componentsSeparatedByString:@" " ] count]);
                }

            }
        }
    }
    return 0;
}
