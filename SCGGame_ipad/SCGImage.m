//
//  SCGImage.m
//  SCGGame_ipad
//
//  Created by Weerayoot Ngandee on 9/25/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import "SCGImage.h"


@implementation SCGImage


+ (SCGImage *)setImage:(CGRect)frame withImage:(NSString *)imageName
{
    SCGImage *imv=[[SCGImage alloc] initWithImage:[UIImage imageNamed:imageName]];
    [imv setFrame:frame];
    [imv setContentMode:UIViewContentModeScaleAspectFit];
    return imv;
}

@end
