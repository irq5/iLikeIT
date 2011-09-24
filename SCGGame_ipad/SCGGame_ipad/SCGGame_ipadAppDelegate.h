//
//  SCGGame_ipadAppDelegate.h
//  SCGGame_ipad
//
//  Created by Weerayoot Ngandee on 9/24/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCGGame_ipadViewController;

@interface SCGGame_ipadAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SCGGame_ipadViewController *viewController;

@end
