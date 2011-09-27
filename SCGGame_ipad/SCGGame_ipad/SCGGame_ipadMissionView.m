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

-(void)addButtonSetting
{    
    UIImage *sound = [UIImage imageNamed:@"icons-sound.png"];
    UIImage *play = [UIImage imageNamed:@"icons-play.png"];
    UIImage *question = [UIImage imageNamed:@"icons-question.png"];
    
    soundButton = [UIButton buttonWithType:UIButtonTypeCustom];
    CGRect newSize1 = CGRectMake(8, -90, 57, 57);
    soundButton.frame = newSize1;
    [soundButton setImage:sound forState:UIControlStateNormal];
    soundButton.userInteractionEnabled = YES;
    [soundButton addTarget:self action:@selector(soundOff:) forControlEvents:UIControlEventTouchUpInside];
    [setting addSubview:soundButton];
    
    playButton = [UIButton buttonWithType:UIButtonTypeCustom];
    CGRect newSize2 = CGRectMake(8, -40, 57, 57);
    playButton.frame = newSize2;
    [playButton setImage:play forState:UIControlStateNormal];
    playButton.userInteractionEnabled = YES;
    [playButton addTarget:self action:@selector(soundOff:) forControlEvents:UIControlEventTouchUpInside];
    [setting addSubview:playButton];
    
    questionButton = [UIButton buttonWithType:UIButtonTypeCustom];
    CGRect newSize3 = CGRectMake(8, 10, 57, 57);
    questionButton.frame = newSize3;
    [questionButton setImage:question forState:UIControlStateNormal];
    questionButton.userInteractionEnabled = YES;
    [questionButton addTarget:self action:@selector(soundOff:) forControlEvents:UIControlEventTouchUpInside];
    [setting addSubview:questionButton];
}

-(void)soundOff:(id)sender
{
    NSLog(@"sound on/off");
}

-(void)playAnimation:(id)sender
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelay:1];
    [UIView setAnimationDuration:1];
    [UIView setAnimationRepeatCount:3];
    [UIView setAnimationRepeatAutoreverses:YES];
    //CGRect frame = [sender frame];
    //[sender setFrame:CGRectMake(frame.origin.x, frame.origin.y-20, frame.size.width, frame.size.height)];
    [sender setAlpha:1.0];
    [UIView commitAnimations];
}

-(void)playHeart
{
    for (int i=0; i<4; i++) 
    {
        if(i==0)
        {
            icon = [[[UIImageView alloc] initWithFrame:CGRectMake(129, -35, 51, 51)] autorelease];
            icon.image = [UIImage imageNamed:@"heart.png"];
            icon.alpha = 0.0;
            [womanView addSubview:icon];
            [self playAnimation:icon];
        }
        else if(i==1)
        {
            icon = [[[UIImageView alloc] initWithFrame:CGRectMake(90, 25, 41, 41)] autorelease];
            icon.image = [UIImage imageNamed:@"heart.png"];
            icon.alpha = 0.0;
            [womanView addSubview:icon];
            [self playAnimation:icon];
        }
        else if(i==2)
        {
            icon = [[[UIImageView alloc] initWithFrame:CGRectMake(75, 80, 71, 71)] autorelease];
            icon.image = [UIImage imageNamed:@"heart.png"];
            icon.alpha = 0.0;
            [womanView addSubview:icon];
            [self playAnimation:icon];
        }
        else if(i==3)
        {
            icon = [[[UIImageView alloc] initWithFrame:CGRectMake(238, -5, 61, 61)] autorelease];
            icon.image = [UIImage imageNamed:@"heart.png"];
            icon.alpha = 0.0;
            [womanView addSubview:icon];
            [self playAnimation:icon];
        }
    }
}

-(void)playAnimationSweat
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelay:0.5];
    [UIView setAnimationDuration:1];
    [icon setFrame:CGRectMake(233, 46, 33, 49)];
    [icon setAlpha:1.0];
    [UIView commitAnimations];
}

-(void)playSweat
{
    womanView.image = [UIImage imageNamed:@"woman-unsmile.png"];
    icon = [[[UIImageView alloc] initWithFrame:CGRectMake(233, 0, 33, 49)] autorelease];
    icon.image = [UIImage imageNamed:@"Sweat.png"];
    icon.alpha = 0.0;
    [self playAnimationSweat];
    [womanView addSubview:icon];
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
    self.view.userInteractionEnabled = YES;
    
    //set background
    UIImage *bg = [UIImage imageNamed:@"bg-contractor5.jpg"];
    UIImageView *bgView = [[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, bg.size.width, bg.size.height)] autorelease];
    bgView.image = bg;
    bgView.userInteractionEnabled = YES;
    [self.view addSubview:bgView];
    
    //Buttom ToolBar
    UIImage *buttom = [UIImage imageNamed:@"tab-bottom.png"];
    UIImageView *buttomMenuView = [[[UIImageView alloc] initWithFrame:CGRectMake(0, 567, buttom.size.width, buttom.size.height)] autorelease];
    buttomMenuView.image = buttom;
    buttomMenuView.userInteractionEnabled = YES;
    [bgView addSubview:buttomMenuView];
    
    //setting View
    setting = [[[UIView alloc] init] autorelease];
    [setting setFrame:CGRectMake(274, 605, 69, 210)];
    UIImage *img = [UIImage imageNamed:@"tab-setting.png"];
    bgsettingView = [[[UIImageView alloc] initWithImage:img] autorelease];
    CGRect imageSize = CGRectMake(0, 90, 69, 0);
    bgsettingView.frame = imageSize;
    [setting addSubview:bgsettingView];
    [bgView addSubview:setting];
    
    //Add Mission Label
    UIImage *levelImg = [UIImage imageNamed:@"mission1.png"];
    UIImageView *levelMissionView = [[[UIImageView alloc] initWithFrame:CGRectMake(19, 19, levelImg.size.width, levelImg.size.height)] autorelease];
    levelMissionView.image = levelImg;
    [bgView addSubview:levelMissionView];
    
    //Setting Button
    UIImage *settingImg = [UIImage imageNamed:@"setting114x114.png"];
    settingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    CGRect newSize = CGRectMake(265, 660, 88, 88);
    settingButton.frame = newSize;
    settingButton.selected = NO;
    [settingButton setImage:settingImg forState:UIControlStateNormal];
    settingButton.userInteractionEnabled = YES;
    [settingButton addTarget:self action:@selector(settting:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:settingButton];
    
    //Hint Button
    UIImage *hint = [UIImage imageNamed:@"hint114x114.png"];
    UIButton *hintButton = [UIButton buttonWithType:UIButtonTypeCustom];
    CGRect newSize1 = CGRectMake(345, 660, 88, 88);
    hintButton.frame = newSize1;
    [hintButton setImage:hint forState:UIControlStateNormal];
    hintButton.userInteractionEnabled = YES;
    [hintButton addTarget:self action:@selector(hint:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:hintButton];
    
    //Quit Button
    UIImage *quit = [UIImage imageNamed:@"quit114x114.png"];
    UIButton *quitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    CGRect newSize3 = CGRectMake(425, 660, 88, 88);
    quitButton.frame = newSize3;
    [quitButton setImage:quit forState:UIControlStateNormal];
    quitButton.userInteractionEnabled = YES;
    [quitButton addTarget:self action:@selector(quit:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:quitButton];
    
    //Women
    UIImage *woman = [UIImage imageNamed:@"woman-smile.png"];
    womanView = [[[UIImageView alloc] initWithFrame:CGRectMake(706, 368, woman.size.width, woman.size.height)] autorelease];
    womanView.image = woman;
    smile = YES;
    [bgView addSubview:womanView];
    
    ////random animation
    int ani = arc4random()%2;
    NSLog(@"%d" ,ani);
    
    if (ani == 0) 
    {
        [self playHeart];
    }
    else if(ani == 1)
    {
        [self playSweat];
    }
}

-(void)removeButtonSetting
{
    [soundButton removeFromSuperview];
    [playButton removeFromSuperview];
    [questionButton removeFromSuperview];
}

-(void)settting:(id)sender
{
    NSLog(@"settting");
    if (![settingButton isSelected]) 
    {
        [settingButton setSelected:YES];
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.2];
        CGRect imageSize = CGRectMake(0, -100, 69, 210);
        bgsettingView.frame = imageSize;
        [UIView commitAnimations];
        timer = [NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(addButtonSetting) userInfo:nil repeats:NO];
    }
    else
    {
        [settingButton setSelected:NO];
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.2];
        CGRect imageSize = CGRectMake(0, 90, 69, 0);
        bgsettingView.frame = imageSize;
        [self removeButtonSetting];
        [UIView commitAnimations];
    }
}

-(void)hint:(id)sender
{
    NSLog(@"hint!!!!!");
}

-(void)quit:(id)sender
{
    NSLog(@"quit!!!!!");
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
