//
//  NSString+PigLatin.m
//  Lab13
//
//  Created by 佐藤美佳 on 2020/04/06.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import "NSString+PigLatin.h"

#import <AppKit/AppKit.h>


@implementation NSString (PigLatin)

- (NSString*) stringByPigLatinization {
    NSArray *clusters = @[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl"];
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"AEIOU"];
    NSString *result = @"";
    
    NSArray *words = [self componentsSeparatedByString: @" "];
    for (NSString *word in words) {
        int index = 0;
        char first = [word characterAtIndex:0];
        NSString *firstTwo = [word substringWithRange:NSMakeRange(0, 2)];

        if ([clusters containsObject:firstTwo]) {
            index = 2;
        } else {
            if (![vowels characterIsMember:first]) {
                index = 1;
            }
        }
        NSString *tmp = [[word substringFromIndex:index] stringByAppendingFormat:@"%@%@", [word substringWithRange:NSMakeRange(0, index)], @"ay"];
        result = [result stringByAppendingFormat:@"%@ ", [tmp capitalizedString]];

    }
    return [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}


@end
