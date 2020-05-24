//
//  WSGameGenerator.m
//  GridViewExample
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import "WSGameGenerator.h"

@interface WSGameGenerator() {
    WSCharsMatrix *_generatedCharsGrid;
    WSWordList *_generatedWordList;
}

@end

@implementation WSGameGenerator

+ (instancetype)generatorWithWordsSet:(NSSet *)wordsSet andGameLevel:(WSGameLevel)gameLevel {
    return [[WSGameGenerator alloc] initWithWordsSet:wordsSet andGameLevel:gameLevel];
}

- (instancetype)initWithWordsSet:(NSSet *)wordsSet andGameLevel:(WSGameLevel)gameLevel {
    if (self = [super init]) {
        self.wordsSet = wordsSet;
        self.gameLevel = gameLevel;
    }
    return self;
}

- (WSCharsMatrix *)charsGrid {
    return _generatedCharsGrid;
}

- (WSWordList *)wordList {
    return _generatedWordList;
}

// fake! demo purpose only
- (void)generate {
    
    switch (self.gameLevel) {
        case WSGameLevelEasy:
            [self fakeGeneration_easy];
            break;
        case WSGameLevelHard:
            [self fakeGeneration_hard];
            break;
        default:
            [self fakeGeneration_medium];
            break;
    }
}

- (void)fakeGeneration_easy {
    
    NSArray *rows = @[@"P R O T O N L S",
                      @"E C B E N I T U",
                      @"E T R U E O I E",
                      @"R S T B N R F L",
                      @"A A I E T S R C",
                      @"L G O E P T E U",
                      @"O A P T I I O N",
                      @"M N O T O H P N"];
    
    _generatedCharsGrid = [WSCharsMatrix matrixWithArrayOfStrings:rows];
    _generatedWordList = [WSWordList list];
    
    WSWord *word;
    
    word = [WSWord wordWithText:@"LIEBIG"
              withStartPosition:WSMakeGridPosition(0, 6)
                withEndPosition:WSMakeGridPosition(5, 1)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"NUCLEUS"
              withStartPosition:WSMakeGridPosition(6, 7)
                withEndPosition:WSMakeGridPosition(0, 7)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"BUNSEN"
              withStartPosition:WSMakeGridPosition(1, 2)
                withEndPosition:WSMakeGridPosition(6, 7)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"PETRI"
              withStartPosition:WSMakeGridPosition(6, 2)
                withEndPosition:WSMakeGridPosition(2, 6)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"PIPETTE"
              withStartPosition:WSMakeGridPosition(7, 6)
                withEndPosition:WSMakeGridPosition(1, 0)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"PROTON"
              withStartPosition:WSMakeGridPosition(0, 0)
                withEndPosition:WSMakeGridPosition(0, 5)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"MOLAR"
              withStartPosition:WSMakeGridPosition(7, 0)
                withEndPosition:WSMakeGridPosition(3, 0)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"PHOTON"
              withStartPosition:WSMakeGridPosition(7, 6)
                withEndPosition:WSMakeGridPosition(7, 1)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"GAS"
              withStartPosition:WSMakeGridPosition(5, 1)
                withEndPosition:WSMakeGridPosition(3, 1)];
    [_generatedWordList addWord:word];
}

- (void)fakeGeneration_medium {
    
    NSArray *rows = @[@"R M K T U S B B",
                      @"T O H A I E E O",
                      @"O T T X R A H V",
                      @"V O A A R E O R",
                      @"I R N I U M L E",
                      @"P S N A I T B S",
                      @"U G N S P C C T",
                      @"S E A R P M R A"];
    
    _generatedCharsGrid = [WSCharsMatrix matrixWithArrayOfStrings:rows];
    
    _generatedWordList = [WSWordList list];
    
    WSWord *word;
    
    word = [WSWord wordWithText:@"?????"
              withStartPosition:WSMakeGridPosition(5, 0)
                withEndPosition:WSMakeGridPosition(1, 0)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"MOTORS"
              withStartPosition:WSMakeGridPosition(0, 1)
                withEndPosition:WSMakeGridPosition(5, 1)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"PCB"
              withStartPosition:WSMakeGridPosition(7, 4)
                withEndPosition:WSMakeGridPosition(5, 6)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"SERVO"
              withStartPosition:WSMakeGridPosition(5, 7)
                withEndPosition:WSMakeGridPosition(1, 7)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"KAREL"
              withStartPosition:WSMakeGridPosition(0, 2)
                withEndPosition:WSMakeGridPosition(4, 6)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"BEARINGS"
              withStartPosition:WSMakeGridPosition(0, 7)
                withEndPosition:WSMakeGridPosition(7, 0)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"ASIMOV"
              withStartPosition:WSMakeGridPosition(7, 2)
                withEndPosition:WSMakeGridPosition(2, 7)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"ACTUATOR"
              withStartPosition:WSMakeGridPosition(7, 7)
                withEndPosition:WSMakeGridPosition(0, 0)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"AXIS"
              withStartPosition:WSMakeGridPosition(3, 2)
                withEndPosition:WSMakeGridPosition(0, 5)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"ARM"
              withStartPosition:WSMakeGridPosition(7, 7)
                withEndPosition:WSMakeGridPosition(7, 5)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"PAN"
              withStartPosition:WSMakeGridPosition(6, 4)
                withEndPosition:WSMakeGridPosition(4, 2)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"USB"
              withStartPosition:WSMakeGridPosition(0, 4)
                withEndPosition:WSMakeGridPosition(0, 6)];
    [_generatedWordList addWord:word];
}

- (void)fakeGeneration_hard {
    
    
    NSArray *rows = @[@"F I V P E O N E D O",
                      @"T N I N T A U R U S",
                      @"E F I V H O E C D O",
                      @"M M H P N A L A A M",
                      @"I N I A L O I E U S",
                      @"Z A E U S L I L M R",
                      @"S O B I I D E R O Y",
                      @"T E G T H G R E O E",
                      @"N M S E I V E N T H",
                      @"A R E R E D I G I T"];
    
    _generatedCharsGrid = [WSCharsMatrix matrixWithArrayOfStrings:rows];
    
    _generatedWordList = [WSWordList list];
    
    WSWord *word;
    
    word = [WSWord wordWithText:@"SAH"
              withStartPosition:WSMakeGridPosition(5, 4)
                withEndPosition:WSMakeGridPosition(3, 2)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"NEBULA"
              withStartPosition:WSMakeGridPosition(8, 0)
                withEndPosition:WSMakeGridPosition(3, 5)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"ILIAD"
              withStartPosition:WSMakeGridPosition(6, 4)
                withEndPosition:WSMakeGridPosition(2, 8)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"TAURUS"
              withStartPosition:WSMakeGridPosition(1, 4)
                withEndPosition:WSMakeGridPosition(1, 9)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"?????"
              withStartPosition:WSMakeGridPosition(7, 8)
                withEndPosition:WSMakeGridPosition(3, 4)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"RIGEL"
              withStartPosition:WSMakeGridPosition(9, 3)
                withEndPosition:WSMakeGridPosition(5, 7)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"PTOLEMY"
              withStartPosition:WSMakeGridPosition(0, 3)
                withEndPosition:WSMakeGridPosition(6, 9)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"SAIPH"
              withStartPosition:WSMakeGridPosition(6, 0)
                withEndPosition:WSMakeGridPosition(2, 4)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"SIGMA"
              withStartPosition:WSMakeGridPosition(5, 4)
                withEndPosition:WSMakeGridPosition(9, 0)];
    [_generatedWordList addWord:word];
    
  
    
  
}

@end
