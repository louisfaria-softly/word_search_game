//
//  WSCommon.m
//  GridViewExample
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import "WSCommon.h"

BOOL areEqualsPosition(WSGridPosition firstPosition, WSGridPosition secondPosition) {
    return (firstPosition.column == secondPosition.column) && (firstPosition.row == secondPosition.row);
}

BOOL areEqualsSizes(CGSize firstSize, CGSize secondSize) {
    return (firstSize.height == secondSize.height) && (firstSize.width == secondSize.width);
}

WSGridPosition WSMakeGridPosition(NSUInteger row, NSUInteger column) {
    WSGridPosition position;
    position.row = row;
    position.column = column;
    return position;
}

NSString *NSStringFromPosition(WSGridPosition position) {
    return [NSString stringWithFormat:@"(%u, %u)", (unsigned)position.row, (unsigned)position.column];
}
