//
//  WSMarksFactory.h
//  GridViewExample
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WSMark.h"

/**
 * Creates the marks
 */
@interface WSMarksFactory : NSObject

+ (instancetype)factoryWithCellSize:(CGSize)cellSize;

- (WSMark *)createMarkWithColor:(UIColor *)color;

@end
