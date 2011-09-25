//
//  SCGViewController.m
//  SCGGame_ipad
//
//  Created by Weerayoot Ngandee on 9/25/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import "SCGViewController.h"
#import "SCGGame_ipadMenuView.h"


@implementation SCGViewController
@synthesize soundFileURLRef,soundFileObject;
@synthesize upperView;

-(void)presentModalViewController:(UIViewController *)modalViewController{
    if ([[modalViewController class] isSubclassOfClass:[SCGViewController class]]) {
        SCGViewController *SGCController=(SCGViewController *)modalViewController;
        SGCController.upperView=self;
    }
    
    modalViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:modalViewController animated:YES];
}

- (IBAction)backToMenu
{
    if (upperView&&[self class]!=[SCGGame_ipadMenuView class]) {
        [upperView backToMenu];
    }else{
        [self dismissModalViewControllerAnimated:YES];
    }
}

- (void)playSound:(NSString *)soundName withType:(NSString *)type
{
    NSURL *sound = [[NSBundle mainBundle] URLForResource:soundName withExtension:type];
    self.soundFileURLRef = (CFURLRef)[sound retain];
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundFileObject);
    AudioServicesPlayAlertSound(soundFileObject);
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

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
