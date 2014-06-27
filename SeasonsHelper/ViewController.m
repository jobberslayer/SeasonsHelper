//
//  ViewController.m
//  SeasonsHelper
//
//  Created by Kevin Lester on 6/27/14.
//  Copyright (c) 2014 NunyaInc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _currentPlayer = 1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)adjustPlayerLogo {
    NSString *v = [_whichPlayer titleForSegmentAtIndex:[_whichPlayer selectedSegmentIndex]];
    NSString *cp = [NSString stringWithFormat:@"%d", _currentPlayer];
    
    if ([v isEqualToString:cp]) {
        [_Player1Logo setHidden: NO];
    } else {
        [_Player1Logo setHidden:YES];
    }
}

- (IBAction)incChanged:(UISlider *)sender {
    int v = [_incSlider value];
    [_incLabel setText:[NSString stringWithFormat:@"%d", v]];
    _scoreStepper.stepValue = v;
    
}

- (IBAction)scoreChanged:(UIStepper *)sender {
    int v = [_scoreStepper value];
    [_scoreLabel setText:[NSString stringWithFormat:@"%d", v]];
}

- (IBAction)summonChanged:(UISlider *)sender {
    int v = [_summonSlider value];
    
    [_summonLabel setText:[NSString stringWithFormat:@"%d", v]];
}

- (IBAction)playerChanged:(UISegmentedControl *)sender {
    [self adjustPlayerLogo];
    
}

- (IBAction)nextTurn:(id)sender {
    NSString *v = [_NumOfPlayers titleForSegmentAtIndex:[_NumOfPlayers selectedSegmentIndex]];
    int numPlayers = [v integerValue];
    _currentPlayer = _currentPlayer + 1;
    if (_currentPlayer > numPlayers) {
        _currentPlayer = 1;
    }
    
    [_player1Label setText:[NSString stringWithFormat:@"%d", _currentPlayer]];
    [self adjustPlayerLogo];
    
}

- (IBAction)prevTurn:(id)sender {
    NSString *v = [_NumOfPlayers titleForSegmentAtIndex:[_NumOfPlayers selectedSegmentIndex]];
    int numPlayers = [v integerValue];
    _currentPlayer = _currentPlayer - 1;
    if (_currentPlayer < 1) {
        _currentPlayer = numPlayers;
    }
    
    [_player1Label setText:[NSString stringWithFormat:@"%d", _currentPlayer]];
    [self adjustPlayerLogo];
}
@end
