//
//  WSTouchesProtocol.h
//  GridViewExample
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WSTouchesProtocol <NSObject>

@optional
- (void)touchBeganAtPoint:(CGPoint)point;
- (void)touchMovedAtPoint:(CGPoint)point;
- (void)touchEndedAtPoint:(CGPoint)point;
- (void)touchCancelled;

@end
