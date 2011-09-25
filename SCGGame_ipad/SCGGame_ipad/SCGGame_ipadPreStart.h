//
//  SCGGame_ipadPreStart.h
//  SCGGame_ipad
//
//  Created by Weerayoot Ngandee on 9/24/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SCGGame_ipadPreStart : SCGViewController <UIScrollViewDelegate>{
    UILabel *descriptionLabel;
    UIScrollView *descriptionScroll;
    NSTimer *timer;
}

- (void)next;

@end
