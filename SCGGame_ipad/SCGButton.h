//
//  SCGButton.h
//  SCGGame_ipad
//
//  Created by Weerayoot Ngandee on 9/25/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SCGButton : UIButton {
    
}
+ (SCGButton *)setButton:(CGRect)frame withImage:(NSString *)imageName target:(id)target action:(SEL)action;
+ (SCGButton *)setButton:(CGRect)frame withImage:(NSString *)imageName target:(id)target action:(SEL)action tag:(int)tag;
+ (SCGButton *)setButton:(CGRect)frame withImage1:(NSString *)imageName1 withImage2:(NSString *)imageName2 target:(id)target action:(SEL)action;

@end
