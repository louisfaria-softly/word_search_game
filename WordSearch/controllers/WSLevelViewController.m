//
//  WSLevelViewController.m
//  WordSearch
//
//  Created by Louis Faria-Softly
//  Copyright (c) 2017 UI UX Design Ltd. All rights reserved.
//

#import "WSLevelViewController.h"
#import "WSCommon.h"
#import "WSGridViewController.h"




@interface WSLevelViewController () {
    WSGameLevel _gameLevel;
}

@property (weak, nonatomic) IBOutlet UIView *easyView;
@property (weak, nonatomic) IBOutlet UIView *mediumView;
@property (weak, nonatomic) IBOutlet UIView *hardView;

@end


@implementation WSLevelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(easyView_tapped)];
    tapGestureRecognizer.numberOfTapsRequired = 1;
    [self.easyView addGestureRecognizer:tapGestureRecognizer];
    
    tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(mediumView_tapped)];
    tapGestureRecognizer.numberOfTapsRequired = 1;
    [self.mediumView addGestureRecognizer:tapGestureRecognizer];
    
    tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hardView_tapped)];
    tapGestureRecognizer.numberOfTapsRequired = 1;
    [self.hardView addGestureRecognizer:tapGestureRecognizer];


//  NSInteger _scoreCount1 = [[NSUserDefaults standardUserDefaults] integerForKey:@"Round1"];
//
//    NSLog(@"%lu", (unsigned long)_scoreCount1);
//
//
//    if (_scoreCount1 >= 5 ){
//
//         _mediumView.userInteractionEnabled = true;
//    }
//
//    else{
//
//
//
//    _mediumView.userInteractionEnabled = false;
//
//
//    }
//
    
//    _easyView.userInteractionEnabled = true;
//
//     NSString*level = [[NSUserDefaults standardUserDefaults] stringForKey:@"Game1"];
//
//    if([level  isEqual: @"Complete1"]){
//
//           _easyView.userInteractionEnabled = false;
//
//    }
    
   

}

- (void)easyView_tapped {
   
    NSInteger _scoreCount1 = [[NSUserDefaults standardUserDefaults] integerForKey:@"Round1"];
//
////
////
            if (_scoreCount1 <= 5 ){
////
    _gameLevel = WSGameLevelEasy;
    [self performSegueWithIdentifier:@"showGridSegue" sender:self];
////
            }
//
    
}

- (void)mediumView_tapped {

      
    
    NSInteger _scoreCount2 = [[NSUserDefaults standardUserDefaults] integerForKey:@"Round2"];
    NSInteger _scoreCount1 = [[NSUserDefaults standardUserDefaults] integerForKey:@"Round1"];
    
    
    
    
    if (_scoreCount1 >= 9 ){
           
            
       
    _gameLevel = WSGameLevelMedium;
    [self performSegueWithIdentifier:@"showGridSegue" sender:self];
        
    }
}

- (void)hardView_tapped {

    _gameLevel = WSGameLevelHard;
    [self performSegueWithIdentifier:@"showGridSegue" sender:self];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showGridSegue"]) {
        if ([[segue destinationViewController] isKindOfClass:[WSGridViewController class]]) {
            WSGridViewController *controller = (WSGridViewController *)[segue destinationViewController];
            controller.gameLevel = _gameLevel;
        }
    }
    
   
    
    
    
    
    
}




    

- (IBAction)showActivityView:(id)sender {
    
    NSString *shareText = @"@ShootingFilmUK #ShootingFilmUK #GliaCodeBreaker the answer to the riddle is ";
    
    NSArray *itemsToShare = @[shareText];
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:itemsToShare applicationActivities:nil];
    
    activityVC.excludedActivityTypes = @[];
    
    [self presentViewController:activityVC animated:YES completion:nil];
}

- (IBAction)website:(UIBarButtonItem *)sender {
[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.shootingfilm.co.uk"]options:@{} completionHandler:nil];
}

@end
