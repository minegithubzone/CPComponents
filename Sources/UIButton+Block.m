//
//  UIButton+Block.m
//  GreenNanTongGV
//
//  Created by cap_issuser on 16/6/29.
//  Copyright © 2016年 cap. All rights reserved.
//

#import "UIButton+Block.h"
static void *strKey = &strKey;
static void *strKeyInfo = &strKeyInfo;
@implementation UIButton (Block)

- (void)setInfoDic:(NSDictionary *)infoDic{
    objc_setAssociatedObject(self, &strKeyInfo, infoDic, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (NSDictionary*)infoDic{
    return objc_getAssociatedObject(self, &strKeyInfo);
}


- (void)setBlockClick:(ClickBlock)blockClick{
    if (blockClick==nil) {
        return;
    }
    objc_setAssociatedObject(self, &strKey, blockClick, OBJC_ASSOCIATION_COPY);
}
- (ClickBlock)blockClick{
    return objc_getAssociatedObject(self, &strKey);
}


- (void)make_BlockClick:(ClickBlock)block{
    self.blockClick = block;
}

- (instancetype)init{
    if (self = [super init]){
        [self addTarget:self action:@selector(touchUpInsideClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}
//- (instancetype)initWithFramea:(CGRect)frame{
//    if (self = [super initWithFrame:frame]) {
////        [self addTarget:self action:@selector(touchUpInsideClick) forControlEvents:UIControlEventTouchUpInside];
//    }
//    return self;
//}

- (void)touchUpInsideClick{
    if (self.blockClick) {
        self.blockClick(self);
    }else{
//        NSLog(@"未监听点击事件");
    }
    
}



@end
