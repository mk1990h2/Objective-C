//
//  main.m
//  Lab2
//
//  Created by 佐藤美佳 on 2020/03/24.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

/*
  .h (header file - public interface)
  .m (implementation file - your implementation)
 */
#import <Foundation/Foundation.h>
#import "DateCalculator.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
      Box *box = [[Box alloc] initWithHeight:20 andWidth:30 andLength:40];
      NSLog(@"%.1f", [box calcVolume]);
    
      Box *box2 = [[Box alloc] initWithHeight:10 andWidth:20 andLength:30];
      NSLog(@"%.1f", [box2 calcVolume]);

      NSLog(@"%d", [box calcHowManyBoxFit:box2]);
  }
  return 0;
}

//int main(int argc, const char * argv[]) {
//  @autoreleasepool {
//    // Default initializer
//    // - DateCalculator *calc1 = [DateCalculator new];
//    DateCalculator *calc = [[DateCalculator alloc] init];
//    calc.myAge = 30.2;
//    NSLog(@"%.1f", calc.myAge);
//    //    [DateCalculator sayHelloWith:@"How are you?" andName:@"Derrick"];
//
//    DateCalculator *calc2 = [[DateCalculator alloc] initWithMyAge:60 andName:@"Robert"];
//    if ([calc2 canDatePersonWithAge:20]) {
//      NSLog(@"Yes");
//    } else {
//      NSLog(@"No");
//    }
//
//    // Note: Senging a message to nil does not crash!
//    // In Java lingo => "Calling a methodon a null object does not throw a NullPointerException!"
//    DateCalculator *calc3 = nil;
//    NSLog(@"%d", [calc3 canDatePersonWithAge:30]);
//    NSString *str = nil;
//    NSLog(@"%@", [str uppercaseString]);
//
//  }
//  return 0;
//}
