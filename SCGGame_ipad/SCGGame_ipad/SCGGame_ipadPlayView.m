//
//  SCGGame_ipagPlayView.m
//  SCGGame_ipad
//
//  Created by Moshino_Nae on 9/24/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import "SCGGame_ipadPlayView.h"
#import "SCGGame_ipadPreStart.h"


@implementation SCGGame_ipadPlayView

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


// Implement loadView to create a view hierarchy programmatically, without using a nib.
/*- (void)loadView
{
}*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.userInteractionEnabled = YES;
    
    ///set Backgroud imageView
    UIImage *bg = [UIImage imageNamed:@"bg-contractor3.jpg"];
    UIImageView *bgView = [[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, bg.size.width, bg.size.height)] autorelease];
    bgView.image = bg;
    bgView.contentMode = UIViewContentModeScaleAspectFit;
    bgView.userInteractionEnabled = YES;
    
    ///set Logo SCG-Games
    UIImage *logo = [UIImage imageNamed:@"logo-game.png"];
    UIImageView *logoView = [[[UIImageView alloc] initWithFrame:CGRectMake(385, 24, 315, 180)] autorelease];
    logoView.image = logo;
    [bgView addSubview:logoView];
    
    //Array image mission
    mission = [NSArray arrayWithObjects:@"box-mission1.png", @"box-mission2.png", @"box-mission3.png", @"box-mission4.png" , @"box-mission5.png", nil];
    missionLock = [NSArray arrayWithObjects:@"box-mission1-lock.png", @"box-mission2-lock.png", @"box-mission3-lock.png", @"box-mission4-lock.png" , @"box-mission5-lock.png",nil];
    
    //create mission Button
    float x = 185.0f;
    float y = 236.0f;
    
    for (int i=0; i<5; i++) 
    {
        ///Check Lock Mission
        if (i!=0) //Lock can't touch
        {
            UIButton *missionlockButton = [UIButton buttonWithType:UIButtonTypeCustom];
            UIImage *mislock = [UIImage imageNamed:[missionLock objectAtIndex:i]];
            
            CGRect newSize = CGRectMake(x, y, 132, 320 );
            missionlockButton.frame = newSize;
            [missionlockButton setImage:mislock forState:UIControlStateNormal];
            missionlockButton.userInteractionEnabled = NO;
            [bgView addSubview:missionlockButton];
        }
        else //Unlock can touch
        {   
            UIButton *missionUnlockButton = [UIButton buttonWithType:UIButtonTypeCustom];
            UIImage *misUnlock = [UIImage imageNamed:[mission objectAtIndex:i]];
            
            CGRect newSize = CGRectMake(x, y, 132, 320 );
            missionUnlockButton.frame = newSize;
            [missionUnlockButton setImage:misUnlock forState:UIControlStateNormal];
            missionUnlockButton.userInteractionEnabled = YES;
            [missionUnlockButton addTarget:self action:@selector(playMission:) forControlEvents:UIControlEventTouchUpInside];
            [bgView addSubview:missionUnlockButton];
        }
        x += 145.0f;
    }
    
    [self.view addSubview:bgView];
}

-(void)playMission:(id)sender
{
    [UIView beginAnimations:Nil context:nil];
    [UIView setAnimationDuration:1.5];
    [self.view setAlpha:0];
    [UIView commitAnimations];
    SCGGame_ipadPreStart *preStartPage = [[[SCGGame_ipadPreStart alloc] init] autorelease];
    preStartPage.view.alpha = 0.0;
    [self presentModalViewController:preStartPage animated:NO];
    [UIView animateWithDuration:1.5 animations:^{preStartPage.view.alpha = 1.0;}];
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
