//
//  DateCalculater.h
//  Lab2
//
//  Created by 佐藤美佳 on 2020/03/24.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DateCalculator : NSObject

// property -> private instance var + getter + setter
@property (nonatomic, assign) float myAge;
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithMyAge:(float) myAge andName:(NSString *) name;
- (BOOL) canDatePersonWithAge:(float) age;
+ (void) sayHelloWith:(NSString *) message andName:(NSString *) name;

@end
