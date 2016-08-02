//
//  TextView.h
//  TextView
//
//  Created by youminuo on 16/8/2.
//  Copyright © 2016年 youminuo. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface TextView : UITextView
///  占位文本
@property (nonatomic,copy) IBInspectable NSString *placeholder;
@end
