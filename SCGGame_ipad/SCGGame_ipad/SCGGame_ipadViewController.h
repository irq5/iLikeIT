//
//  SCGGame_ipadViewController.h
//  SCGGame_ipad
//
//  Created by Weerayoot Ngandee on 9/24/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface SCGGame_ipadViewController : SCGViewController {
    UIImageView *truck;
    UIImageView *logo;
    UIImageView *cloud1;
    UIImageView *cloud2;
    
    NSTimer *timer;
}
@property (nonatomic, retain) NSTimer *timer;



- (void)animateTruck;
- (void)animateCloud1;
- (void)animateCloud2;
- (void)animateLogo;
-(void)endOpening;

@end
