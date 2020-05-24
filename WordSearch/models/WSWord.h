//
//  WSWord.h
//  GridViewExample
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WSCommon.h"

/**
 * A word in the grid
 */
@interface WSWord : NSObject

+ (instancetype)wordWithText:(NSString *)text
           withStartPosition:(WSGridPosition)startPosition
             withEndPosition:(WSGridPosition)endPosition;

@property (nonatomic, strong, readonly) NSString *text;

@property (nonatomic, readonly) WSGridPosition startPosition;
@property (nonatomic, readonly) WSGridPosition endPosition;

- (WSGridPosition)gridPositionForCharAtIndex:(NSUInteger)charIndex;

- (BOOL)isCrossedOut;

/**
 * @return YES if the word was crossed out successfully, NO if it was already crossed out
 */
- (BOOL)crossOut;


@end
