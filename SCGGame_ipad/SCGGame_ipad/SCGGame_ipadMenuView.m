//
//  SCGGame_ipadMenuView.m
//  SCGGame_ipad
//
//  Created by Moshino_Nae on 9/24/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import "SCGGame_ipadMenuView.h"
#import "SCGGame_ipadPlayView.h"
#import <QuartzCore/QuartzCore.h>

@implementation SCGGame_ipadMenuView


- (IBAction)settingTapped:(id)sender
{     
    [self playSound:@"NailHammerintoWood01" withType:@"wav"];
    if (settingView.alpha == 0) {
        [self.view addSubview:settingView];          
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.7];
        settingView.alpha = 1;
        [UIView commitAnimations];
    }else {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDidStopSelector:@selector(endSetting::)];
        settingView.alpha = 0;
        [UIView commitAnimations];
    }
}

- (IBAction)closeSettingTapped:(id)sender
{
    [self playSound:@"NailHammerintoWood01" withType:@"wav"];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.7];
    [UIView setAnimationDidStopSelector:@selector(endSetting::)];
    settingView.alpha = 0;
    [UIView commitAnimations];
}


- (void)endSetting:(NSString *)s :(BOOL)b
{
    [settingView removeFromSuperview];
}

- (IBAction)highScoreTapped:(id)sender
{     
    [self playSound:@"NailHammerintoWood01" withType:@"wav"];
    if (highScoreView.alpha == 0) {
        [self.view addSubview:highScoreView];          
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.7];
        highScoreView.alpha = 1;
        [UIView commitAnimations];
    }else {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDidStopSelector:@selector(endSetting::)];
        highScoreView.alpha = 0;
        [UIView commitAnimations];
    }
}

- (IBAction)closeHighScoreTapped:(id)sender
{
    [self playSound:@"NailHammerintoWood01" withType:@"wav"];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.7];
    [UIView setAnimationDidStopSelector:@selector(endHighScore::)];
    highScoreView.alpha = 0;
    [UIView commitAnimations];
}


- (void)endHighScore:(NSString *)s :(BOOL)b
{
    [highScoreView removeFromSuperview];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // initail setting view
    settingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1024, 768)];
    [settingView setBackgroundColor:[UIColor colorWithWhite:0 alpha:0.6]];
    [settingView setAlpha:0];
    UIImageView *settingBG = [[[UIImageView alloc] init] autorelease];
    [settingBG setFrame:CGRectMake(settingView.frame.size.width/2, settingView.frame.size.width/2, 514, 377)];
    settingBG.center=CGPointMake(settingView.frame.size.width/2, settingView.frame.size.height/2);
    [settingBG setImage:[UIImage imageNamed:@"setting-bg2.png"]];
    [settingView addSubview:settingBG];
    UIButton *closeSettingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [closeSettingButton setFrame:CGRectMake(690, 195, 86, 86)];
    [closeSettingButton setImage:[UIImage imageNamed:@"close-button2.png"] forState:UIControlStateNormal];
    [closeSettingButton addTarget:self action:@selector(closeSettingTapped:) forControlEvents:UIControlEventTouchUpInside];
    [settingView addSubview:closeSettingButton];
    
    // initail highscore view
    highScoreView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1024, 768)];
    [highScoreView setBackgroundColor:[UIColor colorWithWhite:0 alpha:0.6]];
    [highScoreView setAlpha:0];
    UIImageView *highScoreBG = [[[UIImageView alloc] init] autorelease];
    [highScoreBG setFrame:CGRectMake(highScoreView.frame.size.width/2, highScoreView.frame.size.width/2, 514, 377)];
    highScoreBG.center=CGPointMake(highScoreView.frame.size.width/2, highScoreView.frame.size.height/2);
    [highScoreBG setImage:[UIImage imageNamed:@"highscore-bg2.png"]];
    [highScoreView addSubview:highScoreBG];
    UIButton *closeHighScoreButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [closeHighScoreButton setFrame:CGRectMake(690, 195, 86, 86)];
    [closeHighScoreButton setImage:[UIImage imageNamed:@"close-button2.png"] forState:UIControlStateNormal];
    [closeHighScoreButton addTarget:self action:@selector(closeHighScoreTapped:) forControlEvents:UIControlEventTouchUpInside];
    [highScoreView addSubview:closeHighScoreButton];
    
    
    UIImage *bg = [UIImage imageNamed:@"bg-contractor2-1.jpg"];
    UIImage *logo = [UIImage imageNamed:@"logo-game.png"];
    UIImage *play = [UIImage imageNamed:@"text-play.png"];
    UIImage *highscore = [UIImage imageNamed:@"high-score.png"];
    UIImage *setting = [UIImage imageNamed:@"text-setting.png"];
    
    UIImageView *bgView = [[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, bg.size.width, bg.size.height)] autorelease];
    bgView.image = bg;
    bgView.contentMode = UIViewContentModeScaleAspectFit; 
    bgView.userInteractionEnabled = YES;
    
    UIImageView *logoView = [[[UIImageView alloc] initWithFrame:CGRectMake(370, 77, 303, 168)] autorelease];
    logoView.image = logo;
    logoView.contentMode = UIViewContentModeScaleAspectFit;
    
    [bgView addSubview:logoView];
    
    UIButton *playButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    CGRect newSize = CGRectMake(452, 265, 217, 71);
    playButton.frame = newSize;
    [playButton setImage:play forState:UIControlStateNormal];
    playButton.userInteractionEnabled = YES;
    [playButton addTarget:self action:@selector(play:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:playButton];
    
    UIButton *heightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    CGRect newSize1 = CGRectMake(460, 365, 217, 71);
    heightButton.frame = newSize1;
    [heightButton setImage:highscore forState:UIControlStateNormal];
    heightButton.userInteractionEnabled = YES;
    [heightButton addTarget:self action:@selector(highScoreTapped:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:heightButton];

    UIButton *settingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    CGRect newSize3 = CGRectMake(460, 445, 217, 71);
    settingButton.frame = newSize3;
    [settingButton setImage:setting forState:UIControlStateNormal];
    settingButton.userInteractionEnabled = YES;
    [settingButton addTarget:self action:@selector(settingTapped:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:settingButton];
    
    [self.view addSubview:bgView];
}

-(void)play:(id)sender
{
    //transition fade
    [self playSound:@"NailHammerintoWood01" withType:@"wav"];
    [UIView beginAnimations:Nil context:nil];
    [UIView setAnimationDuration:1.5];
    [self.view setAlpha:0];
    [UIView commitAnimations];
    SCGGame_ipadPlayView *playView = [[SCGGame_ipadPlayView alloc] init];
    playView.view.alpha = 0.0;
    [self presentModalViewController:playView animated:NO];
    [UIView animateWithDuration:1.5
                     animations:^{playView.view.alpha = 1.0;}];
    [playView release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
