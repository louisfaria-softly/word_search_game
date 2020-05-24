//
//  WSGameGenerator.h
//  GridViewExample
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WSCommon.h"
#import "WSWordList.h"
#import "WSCharsMatrix.h"


/**
 * It's the core game engine. It generates the word list and the chars grid.
 */
@interface WSGameGenerator : NSObject

/**
 * The initial set of words from which will be chosen a random subset to generate the game.
 * For demo purposes it's ignored.
 */
@property (nonatomic, strong) NSSet *wordsSet;

/**
 * It establishes the grid size and word list length
 */
@property (nonatomic) WSGameLevel gameLevel;

+ (instancetype)generatorWithWordsSet:(NSSet *)wordsSet andGameLevel:(WSGameLevel)gameLevel;

- (void)generate;

- (WSCharsMatrix *)charsGrid;
- (WSWordList *)wordList;

@end
