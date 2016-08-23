//
//  HYNavigationController.h
//  test_navi
//
//  Created by wuhaiyang on 16/8/23.
//  Copyright © 2016年 wuhaiyang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYNavigationController : UINavigationController<UINavigationControllerDelegate>

/** 设置是否支持手势滑动返回, 默认为NO */
@property (assign,nonatomic) BOOL enableBackGesture;

/** 手势滑动返回有效果的偏移量 */
@property (nonatomic) CGFloat offsetBackGesture;

@end
