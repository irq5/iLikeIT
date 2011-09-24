//
//  SCGGame_ipadPreStart.m
//  SCGGame_ipad
//
//  Created by Weerayoot Ngandee on 9/24/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import "SCGGame_ipadPreStart.h"


@implementation SCGGame_ipadPreStart


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
    // add background
    UIImageView *background = [[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 1024, 768)] autorelease];
    [background setImage:[UIImage imageNamed:@"Contractor-4.jpg"]];
    [background setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:background];
    
    // add scrollView;
    descriptionScroll = [[[UIScrollView alloc] initWithFrame:CGRectMake(292, 310, 575, 148)] autorelease];
    [descriptionScroll setBackgroundColor:[UIColor clearColor]];
    [descriptionScroll setScrollEnabled:YES];
    [descriptionScroll setContentSize:CGSizeMake(575, 148*4)];
    [self.view addSubview:descriptionScroll];
    
    descriptionLabel = [[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 575, 148)] autorelease];
    [descriptionLabel setBackgroundColor:[UIColor clearColor]];
    [descriptionLabel setFont:[UIFont systemFontOfSize:28]];
    [descriptionLabel setLineBreakMode:UILineBreakModeCharacterWrap];
    [descriptionLabel setNumberOfLines:0];
    [descriptionLabel setText:@"Both the 11- and 13-inch MacBook Air now feature the latest generation of Intel processors, the Core i5 and i7. With speeds up to 1.8GHz and faster memory, the new MacBook Air gains up to 2.5x the processing performance over the previous generation.1 MacBook Air also features the Intel HD Graphics 3000 processor, which includes an on-chip engine for video encoding and decoding. That means you experience video playback and FaceTime calls that are smoother, more responsive, and more true to life.2"];
    [descriptionScroll addSubview:descriptionLabel];
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
