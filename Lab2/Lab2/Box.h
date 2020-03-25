//
//  Box.h
//  Lab2
//
//  Created by 佐藤美佳 on 2020/03/24.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float length;

- (instancetype)initWithHeight:(float) height andWidth:(float) width andLength:(float) length;
- (float) calcVolume;
- (int) calcHowManyBoxFit:(Box*) box;

@end
