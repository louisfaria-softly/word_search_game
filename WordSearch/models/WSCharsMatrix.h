//
//  WSCharsMatrix.h
//  WordSearch
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WSChar.h"

/**
 * The data structure behind the grid view
 */
@interface WSCharsMatrix : NSObject

+ (instancetype)matrixWithArrayOfStrings:(NSArray *)arrayOfStrings;

/**
 * @return Number of elements of the grid
 */
- (NSUInteger)size;

- (NSUInteger)rowsCount;
- (NSUInteger)columnsCount;

- (WSChar *)charAtGridPosition:(WSGridPosition)gridPosition;


@end
