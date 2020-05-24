//
//  ViewController.h
//  WordSearch
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WSCommon.h"

/**
 * The main controller of the app, where the user plays the game.
 */
@interface WSGridViewController : UIViewController
@property (nonatomic) WSGameLevel gameLevel;
@property (nonatomic) NSInteger scoreCount1;
@property (nonatomic) NSInteger scoreCount2;
@end


