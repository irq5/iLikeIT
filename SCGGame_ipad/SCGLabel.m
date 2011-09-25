//
//  SCGLabel.m
//  SCGGame_ipad
//
//  Created by Weerayoot Ngandee on 9/25/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import "SCGLabel.h"


@implementation SCGLabel

+(SCGLabel *)getFrameLabel:(CGRect)frame text:(NSString *)text color:(UIColor *)color font:(NSString *)font align:(UITextAlignment)align fontSize:(float)size{
    SCGLabel *label=[[SCGLabel alloc] initWithFrame:frame];
    [label setText:text];
    [label setTextAlignment:align];
    [label setTextColor:color];
    [label setFont:[UIFont fontWithName:font size:size]];
    [label setLineBreakMode:UILineBreakModeWordWrap];
    [label setNumberOfLines:0];
    
    return [label autorelease]; 
}

@end
