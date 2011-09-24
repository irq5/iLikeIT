//
//  SCGGame_ipadViewController.m
//  SCGGame_ipad
//
//  Created by Weerayoot Ngandee on 9/24/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import "SCGGame_ipadViewController.h"
#import "SCGGame_ipadPreStart.h"

@implementation SCGGame_ipadViewController
@synthesize soundFileObject,soundFileURLRef;
@synthesize timer;


- (void)animateTruck
{
    [self playSound];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:9];
    [truck setFrame:CGRectMake(385, 375, 622, 354)];
    [UIView commitAnimations];
}

- (void)animateCloud1
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:25];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [UIView setAnimationRepeatCount:INFINITY];
    [cloud1 setFrame:CGRectMake(-400, 80, 328, 146)];
    [UIView commitAnimations];
}

- (void)animateCloud2
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:40];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [UIView setAnimationRepeatCount:INFINITY];
    [cloud2 setFrame:CGRectMake(-400, 70, 275, 137)];
    [UIView commitAnimations];
}

- (void)animateLogo
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelay:9];
    [UIView setAnimationDuration:2];
    [logo setAlpha:1];
    [UIView commitAnimations];
    timer = [NSTimer scheduledTimerWithTimeInterval:15 target:self selector:@selector(endOpening) userInfo:nil repeats:NO];
}

- (void)playSound
{
    NSURL *sound = [[NSBundle mainBundle] URLForResource:@"MOTOCOME" withExtension:@"WAV"];
    self.soundFileURLRef = (CFURLRef)[sound retain];
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundFileObject);
    AudioServicesPlayAlertSound(soundFileObject);
}

-(void)endOpening
{
    SCGGame_ipadPreStart *preStartPage = [[SCGGame_ipadPreStart alloc] init];
    preStartPage.view.alpha = 0.0;
    [self presentModalViewController:preStartPage animated:NO];
    [UIView animateWithDuration:1.5 animations:^{preStartPage.view.alpha = 1.0;}];
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


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    // initail Back
    UIImageView *background = [[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 1024, 768)] autorelease];
    [background setImage:[UIImage imageNamed:@"bg-Contractor1-2.jpg"]];
    [background setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:background];
    
    // initail frame for object
    truck = [[[UIImageView alloc] initWithFrame:CGRectMake(1024, 375, 622, 354)] autorelease];
    [truck setImage:[UIImage imageNamed:@"Truck.png"]];
    [truck setContentMode:UIViewContentModeScaleAspectFit];
    
    cloud1 = [[[UIImageView alloc] initWithFrame:CGRectMake(1024, 80, 328, 146)] autorelease];
    [cloud1 setImage:[UIImage imageNamed:@"sky1.png"]];
    [cloud1 setContentMode:UIViewContentModeScaleAspectFit];
    
    cloud2 = [[[UIImageView alloc] initWithFrame:CGRectMake(1324, 70, 275, 137)] autorelease];
    [cloud2 setImage:[UIImage imageNamed:@"sky2.png"]];
    [cloud2 setContentMode:UIViewContentModeScaleAspectFit];
    
    logo = [[UIImageView alloc] initWithFrame:CGRectMake(365, 35, 419, 233)];
    [logo setImage:[UIImage imageNamed:@"logo-game.png"]];
    [logo setContentMode:UIViewContentModeScaleAspectFit];
    [logo setAlpha:0];

    [self.view addSubview:cloud1];
    [self.view addSubview:cloud2];
    [self.view addSubview:truck];
    [self.view addSubview:logo];
    
    [self animateCloud1];
    [self animateCloud2];
    [self animateTruck];
    [self animateLogo];
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
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
