//
//  SCGGame_ipadMenuView.h
//  SCGGame_ipad
//
//  Created by Moshino_Nae on 9/24/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCGGame_ipadMenuView : SCGViewController {
    UIView *settingView;
    UIView *highScoreView;
}

- (IBAction)settingTapped:(id)sender;
- (IBAction)closeSettingTapped:(id)sender;
- (void)endSetting:(NSString *)s :(BOOL)b;
- (IBAction)highScoreTapped:(id)sender;
- (IBAction)closeHighScoreTapped:(id)sender;
- (void)endHighScore:(NSString *)s :(BOOL)b;
@end
