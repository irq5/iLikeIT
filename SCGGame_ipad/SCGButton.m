//
//  SCGButton.m
//  SCGGame_ipad
//
//  Created by Weerayoot Ngandee on 9/25/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import "SCGButton.h"


@implementation SCGButton


+ (SCGButton *)setButton:(CGRect)frame withImage:(NSString *)imageName target:(id)target action:(SEL)action
{
    SCGButton *tempButton=[SCGButton buttonWithType:UIButtonTypeCustom];
    [tempButton setBackgroundColor:[UIColor clearColor]];
    [tempButton setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [tempButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return tempButton;
}

+ (SCGButton *)setButton:(CGRect)frame withImage:(NSString *)imageName target:(id)target action:(SEL)action tag:(int)tag
{
    SCGButton *tempButton=[SCGButton buttonWithType:UIButtonTypeCustom];
    [tempButton setBackgroundColor:[UIColor clearColor]];
    [tempButton setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [tempButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [tempButton setTag:tag];
    return tempButton;
}

+ (SCGButton *)setButton:(CGRect)frame withImage1:(NSString *)imageName1 withImage2:(NSString *)imageName2 target:(id)target action:(SEL)action
{
    SCGButton *tempButton=[SCGButton buttonWithType:UIButtonTypeCustom];
    [tempButton setBackgroundColor:[UIColor clearColor]];
    [tempButton setImage:[UIImage imageNamed:imageName1] forState:UIControlStateNormal];
    [tempButton setImage:[UIImage imageNamed:imageName2] forState:UIControlStateSelected];
    [tempButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return tempButton;
}



@end
