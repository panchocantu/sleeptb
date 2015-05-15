//
//  HomeViewController.h
//  pruebas
//
//  Created by Barragan, Francisco on 5/13/15.
//  Copyright (c) 2015 Barragan, Francisco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblResult;

#pragma mark - Properties
@property (weak, nonatomic) IBOutlet UIButton *btnEmoji;
@property (weak, nonatomic) IBOutlet UILabel *lblInfoMessage;
@property (weak, nonatomic) IBOutlet UIButton *btnSleepAwake;

#pragma mark - Methods
- (IBAction)incrementDefaultTime:(id)sender;
- (IBAction)goSleepAwake:(id)sender;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contraintTopDistance;



@end
