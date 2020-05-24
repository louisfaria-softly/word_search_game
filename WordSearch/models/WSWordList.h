//
//  WSWordList.h
//  GridViewExample
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WSWord.h"

/**
 * Contains the complete list of words to be found inside the grid
 */
@interface WSWordList : NSObject

+ (instancetype)list;

- (BOOL)addWord:(WSWord *)word;

- (WSWord *)wordWithText:(NSString *)text;

/**
 * @return the list of word text values
 */
- (NSArray *)strings;

/**
 * @return the WSWord crossed out or nil if no WSWord to cross with the provided parameters
 */
- (WSWord *)crossOutFromStartPosition:(WSGridPosition)startPosition toEndPosition:(WSGridPosition)endPosition;

@end
