//
//  main.m
//  Lab13
//
//  Created by 佐藤美佳 on 2020/04/06.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@", [@"Kale Chips" stringByPigLatinization]);
        NSLog(@"%@", [@"Eat Omlet" stringByPigLatinization]);
    }
    return 0;
}
