//
//  SCGGame_ipadMissionView.m
//  SCGGame_ipad
//
//  Created by Moshino_Nae on 9/25/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import "SCGGame_ipadMissionView.h"


@implementation SCGGame_ipadMissionView

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

UIView *setting;
UIButton *settingButton;
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.userInteractionEnabled = YES;
    
    UIImage *bg = [UIImage imageNamed:@"bg-contractor5.jpg"];
    UIImageView *bgView = [[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, bg.size.width, bg.size.height)] autorelease];
    bgView.image = bg;
    bgView.userInteractionEnabled = YES;
    
    setting = [[UIView alloc] initWithFrame:CGRectMake(275, 660, 88, 88)];
    UIImageView *bgSettingView = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tab-setting.png"]] autorelease];
    [setting addSubview:bgSettingView];
    
    UIImage *sound = [UIImage imageNamed:@"icons-sound.png"];
    UIImage *play = [UIImage imageNamed:@"icons-play.png"];
    UIImage *question = [UIImage imageNamed:@"icons-question.png"];
    
    UIImageView *soundView = [[[UIImageView alloc] initWithFrame:CGRectMake(13, 10, sound.size.width, sound.size.height)] autorelease];
    soundView.image = sound;
    [setting addSubview:soundView];
    
    UIImageView *playView = [[[UIImageView alloc] initWithFrame:CGRectMake(13, 65, play.size.width, play.size.height)] autorelease];
    playView.image = play;
    [setting addSubview:playView];
    
    UIImageView *questionView = [[[UIImageView alloc] initWithFrame:CGRectMake(13, 120, question.size.width, question.size.height)] autorelease];
    questionView.image = question;
    [setting addSubview:questionView];
    
    UIImage *buttom = [UIImage imageNamed:@"tab-bottom.png"];
    UIImageView *buttomMenuView = [[[UIImageView alloc] initWithFrame:CGRectMake(0, 567, buttom.size.width, buttom.size.height)] autorelease];
    buttomMenuView.image = buttom;
    [bgView addSubview:buttomMenuView];
    [bgView addSubview:setting];
    
    UILabel *mistext = [[[UILabel alloc] initWithFrame:CGRectMake(35, 33, 180, 33)] autorelease];
    mistext.text = @"MISSION 1";
    mistext.font = [UIFont fontWithName:@"AndersonFireballXL5" size:27];
    mistext.textColor = [UIColor blueColor];
    mistext.backgroundColor = [UIColor clearColor];
    [bgView addSubview:mistext];
    
    UIImage *setting = [UIImage imageNamed:@"setting114x114.png"];
    settingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    CGRect newSize = CGRectMake(265, 660, 88, 88);
    settingButton.frame = newSize;
    settingButton.selected = NO;
    [settingButton setImage:setting forState:UIControlStateNormal];
    settingButton.userInteractionEnabled = YES;
    [settingButton addTarget:self action:@selector(settting:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:settingButton];
    
    UIImage *hint = [UIImage imageNamed:@"hint114x114.png"];
    UIButton *hintButton = [UIButton buttonWithType:UIButtonTypeCustom];
    CGRect newSize1 = CGRectMake(345, 660, 88, 88);
    hintButton.frame = newSize1;
    [hintButton setImage:hint forState:UIControlStateNormal];
    hintButton.userInteractionEnabled = YES;
    [hintButton addTarget:self action:@selector(hint:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:hintButton];
    
    UIImage *quit = [UIImage imageNamed:@"quit114x114.png"];
    UIButton *quitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    CGRect newSize3 = CGRectMake(425, 660, 88, 88);
    quitButton.frame = newSize3;
    [quitButton setImage:quit forState:UIControlStateNormal];
    quitButton.userInteractionEnabled = YES;
    [quitButton addTarget:self action:@selector(quit:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:quitButton];
    
    UIImage *woman = [UIImage imageNamed:@"woman-smile.png"];
    UIImageView *womanView = [[[UIImageView alloc] initWithFrame:CGRectMake(706, 368, woman.size.width, woman.size.height)] autorelease];
    womanView.image = woman;
    [bgView addSubview:womanView];

    [self.view addSubview:bgView];
}

-(void)settting:(id)sender
{
    NSLog(@"settting");
    if (![settingButton isSelected]) 
    {
        [settingButton setSelected:YES];
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.2];
        [setting setFrame:CGRectMake(275, 455, 40, 80)];
        [UIView commitAnimations];
    }
    else
    {
        [settingButton setSelected:NO];
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.2];
        [setting setFrame:CGRectMake(275, 660, 0, 0)];
        [UIView commitAnimations];
    }
}

-(void)hint:(id)sender
{
    NSLog(@"hint!!!!!");
}

-(void)quit:(id)sender
{
    
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
