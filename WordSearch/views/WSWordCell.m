//
//  WSWordCell.m
//  GridViewExample
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import "WSWordCell.h"

@implementation WSWordCell

- (void)setWord:(WSWord *)word {
    _word = word;
    if ([word isCrossedOut]) {
        NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:word.text];
        [attributeString addAttribute:NSStrikethroughStyleAttributeName
                                value:@2
                                range:NSMakeRange(0, [attributeString length])];
        self.wordLabel.attributedText = attributeString;
    } else {
        self.wordLabel.text = word.text;
    }
}

@end
