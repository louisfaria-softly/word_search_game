//
//  WSMarksView.h
//  GridViewExample
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WSTouchesProtocol.h"
#import "WSMark.h"

/**
 * An overlay into will be drawn word marks
 */
@interface WSMarksOverlay : UIImageView

@property (nonatomic, weak) id<WSTouchesProtocol> touchesDelegate;

- (void)addMark:(WSMark *)mark;

- (void)clear;

@end
