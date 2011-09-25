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
    [heightButton addTarget:self action:@selector(highscore:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:heightButton];

    UIButton *settingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    CGRect newSize3 = CGRectMake(460, 445, 217, 71);
    settingButton.frame = newSize3;
    [settingButton setImage:setting forState:UIControlStateNormal];
    settingButton.userInteractionEnabled = YES;
    [settingButton addTarget:self action:@selector(setting:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:settingButton];
    
    [self.view addSubview:bgView];
}

-(void)play:(id)sender
{
    //transition fade
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

-(void)highscore:(id)sender
{
    NSLog(@"highscore!!!");
}

-(void)setting:(id)sender
{
    NSLog(@"setting!!!");
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
