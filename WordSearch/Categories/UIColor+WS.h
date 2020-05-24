//
//  UIColor+WS.h
//  GridViewExample
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WSCommon.h"

@interface UIColor (WS)

/**
 * Assumes input like "#00FF00" (#RRGGBB)
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString;

/**
 * @return An rgb representation of the color; each component can have a value in the range [0, 1]
 */
- (rgbColor)rgbColor;

@end
