//
//  SCGGame_ipadViewController.h
//  SCGGame_ipad
//
//  Created by Weerayoot Ngandee on 9/24/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCGGame_ipadViewController : UIViewController {
    UIImageView *truck;
    UIImageView *logo;
    UIImageView *cloud1;
    UIImageView *cloud2;
}

- (void)animateTruck;
- (void)animateCloud1;
- (void)animateCloud2;
- (void)animateLogo;
- (void)playSound;

@end
