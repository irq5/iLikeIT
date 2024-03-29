//
//  SCGGame_ipadMissionView.h
//  SCGGame_ipad
//
//  Created by Moshino_Nae on 9/25/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface SCGGame_ipadMissionView : SCGViewController 
{
    UIView *setting;
    UIButton *settingButton;
    UIImageView *bgsettingView;
    UIImageView *womanView;
    
    UIButton *soundButton;
    UIButton *playButton;
    UIButton *questionButton;
    
    NSTimer *timer;
    NSTimer *timer1;
    
    BOOL smile;
    UIImageView *icon;
}

@end
