//
//  WSGridChar.m
//  WordSearch
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import "WSChar.h"

@implementation WSChar

+ (instancetype)charWithChar:(char)character withGridPosition:(WSGridPosition)gridPosition andMarked:(BOOL)marked {
    WSChar *wsChar = [[WSChar alloc] init];
    wsChar.character = character;
    wsChar.gridPosition = gridPosition;
    wsChar.marked = marked;
    return wsChar;
}

@end
