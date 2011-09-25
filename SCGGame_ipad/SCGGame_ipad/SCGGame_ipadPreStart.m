//
//  SCGGame_ipadPreStart.m
//  SCGGame_ipad
//
//  Created by Weerayoot Ngandee on 9/24/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import "SCGGame_ipadPreStart.h"
#import "SCGGame_ipadMissionView.h"


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
    [background setImage:[UIImage imageNamed:@"bg-contractor-4.jpg"]];
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
    [descriptionLabel setFont:[UIFont fontWithName:@"Kunlasatri-Bold" size:30]];
    [descriptionLabel setTextAlignment:UITextAlignmentLeft];
    [descriptionLabel setTextColor:[UIColor whiteColor]];
    [descriptionLabel setLineBreakMode:UILineBreakModeWordWrap];
    [descriptionLabel setNumberOfLines:0];
    [descriptionLabel setText:@"นายช่างดี ! ผมได้รับหน้าที่ให้ดูแลการก่อสร้างบ้านให้ลูกค้าแสนสวย นายต้องดูแลการก่อสร้างให้เรียบร้อยในเฟสแรกนี้ นายจะต้องเลือกปูนซิเมนต์เพื่อนำมาก่อสร้างตัวบ้านให้สมบูรณ์ โดย นายจะต้องเลือกปูนซิเมนต์ให้ครบ 20 ถุงภายในระยะเวลา 1นาที  หากเลือกผิดนายจะต้องตอบคำถามเกี่ยวกับปูนซิเมนต์ใหถูกต้อง ขอให้โชคดี!"];
    [descriptionScroll addSubview:descriptionLabel];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:15 target:self selector:@selector(next) userInfo:nil repeats:NO];
}

- (void)next
{
    SCGGame_ipadMissionView *mission = [[[SCGGame_ipadMissionView alloc] init] autorelease];
    [mission.view setAlpha:0];
    [self presentModalViewController:mission animated:NO];
    [UIView animateWithDuration:1.5 animations:^{mission.view.alpha = 1.0;}];
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
