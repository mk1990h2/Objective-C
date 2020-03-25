//
//  AdditionQuestion.h
//  Lab3
//
//  Created by 佐藤美佳 on 2020/03/25.
//  Copyright © 2020 Mika Sato. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property NSString *question;
@property NSInteger answer;

- (BOOL) checkAnsswer:(NSInteger) input;

@end

//@interface Box : NSObject
//
//@property (nonatomic, assign) float height;
//@property (nonatomic, assign) float width;
//@property (nonatomic, assign) float length;
//
//- (instancetype)initWithHeight:(float) height andWidth:(float) width andLength:(float) length;
//- (float) calcVolume;
//- (int) calcHowManyBoxFit:(Box*) box;
//
//@end

