//
//  WSGridChar.h
//  WordSearch
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WSCommon.h"

/**
 * A letter in the grid
 */
@interface WSChar : NSObject

@property (nonatomic) char character;
@property (nonatomic) WSGridPosition gridPosition;
@property (nonatomic) BOOL marked;

+ (instancetype)charWithChar:(char)character withGridPosition:(WSGridPosition)gridPosition andMarked:(BOOL)marked;

@end
