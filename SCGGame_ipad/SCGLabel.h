//
//  SCGLabel.h
//  SCGGame_ipad
//
//  Created by Weerayoot Ngandee on 9/25/11.
//  Copyright 2011 CloudDHA Mobile Application Development. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SCGLabel : UILabel {
    
}
+(SCGLabel *)getFrameLabel:(CGRect)frame text:(NSString *)text color:(UIColor *)color font:(NSString *)font align:(UITextAlignment)align fontSize:(float)size;

@end
