//
//  SCGGame_ipadViewController.h
//  SCGGame_ipad
//
//  Created by Weerayoot Ngandee on 9/24/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface SCGGame_ipadViewController : UIViewController {
    UIImageView *truck;
    UIImageView *logo;
    UIImageView *cloud1;
    UIImageView *cloud2;
    
    CFURLRef soundFileURLRef;
	SystemSoundID soundFileObject;
    NSTimer *timer;
}
@property (readwrite) CFURLRef soundFileURLRef;
@property (readonly) SystemSoundID soundFileObject;
@property (nonatomic, retain) NSTimer *timer;



- (void)animateTruck;
- (void)animateCloud1;
- (void)animateCloud2;
- (void)animateLogo;
- (void)playSound;
-(void)endOpening;

@end
