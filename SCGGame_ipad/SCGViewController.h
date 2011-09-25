//
//  SCGViewController.h
//  SCGGame_ipad
//
//  Created by Weerayoot Ngandee on 9/25/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>


@interface SCGViewController : UIViewController {
    SCGViewController *upperView;
    
    CFURLRef soundFileURLRef;
	SystemSoundID soundFileObject;
}
@property (nonatomic,retain) SCGViewController *upperView;
@property (readwrite) CFURLRef soundFileURLRef;
@property (readonly) SystemSoundID soundFileObject;

- (IBAction)backToMenu;
- (void)playSound:(NSString *)soundName withType:(NSString *)type;

@end
