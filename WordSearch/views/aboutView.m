//
//  aboutView.m
//  WordSearch
//
//  Created by Richard Faria on 04/04/2017.
//  Copyright © 2017 Giuseppe Morana. All rights reserved.
//

#import "aboutView.h"

@interface aboutView ()

@end

@implementation aboutView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)aboutNews:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.shootingfilm.co.uk"] options:@{} completionHandler:nil];
}

- (IBAction)aboutSocial:(id)sender {
    NSString *shareText = @"@ShootingFilmUK #ShootingFilmUK #GliaCodeBreaker the answer to the riddle is ";
    
    NSArray *itemsToShare = @[shareText];
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:itemsToShare applicationActivities:nil];
    
    activityVC.excludedActivityTypes = @[];
    
    [self presentViewController:activityVC animated:YES completion:nil];
}
@end
