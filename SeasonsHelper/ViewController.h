//
//  ViewController.h
//  SeasonsHelper
//
//  Created by Kevin Lester on 6/27/14.
//  Copyright (c) 2014 NunyaInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *incSlider;
@property (weak, nonatomic) IBOutlet UILabel *incLabel;
@property (weak, nonatomic) IBOutlet UIStepper *scoreStepper;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UISlider *summonSlider;
@property (weak, nonatomic) IBOutlet UILabel *summonLabel;
@property NSInteger currentPlayer;
@property (weak, nonatomic) IBOutlet UISegmentedControl *whichPlayer;
@property (weak, nonatomic) IBOutlet UIImageView *Player1Logo;
@property (weak, nonatomic) IBOutlet UILabel *player1Label;

@property (weak, nonatomic) IBOutlet UISegmentedControl *NumOfPlayers;

- (void)adjustPlayerLogo;

- (IBAction)incChanged:(UISlider *)sender;
- (IBAction)scoreChanged:(UIStepper *)sender;
- (IBAction)summonChanged:(UISlider *)sender;
- (IBAction)playerChanged:(UISegmentedControl *)sender;

- (IBAction)nextTurn:(id)sender;
- (IBAction)prevTurn:(id)sender;


@end
