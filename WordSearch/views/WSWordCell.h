//
//  WSWordCell.h
//  GridViewExample
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WSWord.h"

/**
 * It contains a word (bottom part of the screen)
 */
@interface WSWordCell : UICollectionViewCell

@property (nonatomic, strong) WSWord *word;
@property (weak, nonatomic) IBOutlet UILabel *wordLabel;

@end
