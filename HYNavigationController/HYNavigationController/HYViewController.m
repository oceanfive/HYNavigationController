//
//  HYViewController.m
//  test_navi
//
//  Created by wuhaiyang on 16/8/23.
//  Copyright © 2016年 wuhaiyang. All rights reserved.
//

#import "HYViewController.h"

@interface HYViewController ()

@property (nonatomic, strong) UIButton *pushBtn;

@property (nonatomic, strong) UIButton *popBtn;

@end

@implementation HYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int arc = arc4random() % 255;
    CGFloat random = arc / 255.0;
    self.view.backgroundColor = [UIColor colorWithRed:random green:random blue:random alpha:1.0];
    
    self.pushBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.pushBtn.frame = CGRectMake(50, 200, 100, 100);
    self.pushBtn.backgroundColor  = [UIColor orangeColor];
    [self.pushBtn setTitle:@"push" forState:UIControlStateNormal];
    [self.pushBtn addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.pushBtn];
    
    
    self.popBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.popBtn.frame = CGRectMake(50, 500, 100, 100);
    self.popBtn.backgroundColor  = [UIColor blueColor];
    [self.popBtn setTitle:@"pop" forState:UIControlStateNormal];
    [self.popBtn addTarget:self action:@selector(pop:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.popBtn];
    
    self.navigationController.hidesBarsOnTap = YES;
    self.navigationController.hidesBarsOnSwipe = YES;
    
    
    self.navigationItem.title = @"test";
    // Do any additional setup after loading the view.
}

- (void)push:(UIButton *)button{
    
    HYViewController *vc = [[HYViewController alloc] init];
    
    [self.navigationController pushViewController:vc animated:YES];

}

- (void)pop:(UIButton *)button{
    
    [self.navigationController popViewControllerAnimated:YES];
    
}



@end
