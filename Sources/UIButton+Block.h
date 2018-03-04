//
//  UIButton+Block.h
//  GreenNanTongGV
//
//  Created by cap_issuser on 16/6/29.
//  Copyright © 2016年 cap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
@class UIButton;

typedef void (^ClickBlock) (UIButton*btn);

@interface UIButton (Block)

//@property(nonatomic,copy)ClickBlock blockClick;

//@property(nonatomic,strong)NSDictionary* infoDic;

//- (void)make_BlockClick:(ClickBlock)block;

@end
