//
//  MeController.m
//  1995
//
//  Created by Lg on 2017/3/1.
//  Copyright © 2017年 Lg. All rights reserved.
//

#import "MeController.h"

@interface MeController ()

@end

@implementation MeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.navigationItem.title = @"我的";
    
    //右边
    UIButton *setbotton = [UIButton buttonWithType:UIButtonTypeCustom];
    [setbotton setImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
    [setbotton setImage:[UIImage imageNamed:@"mine-setting-iconClick"] forState:UIControlStateHighlighted];
    [setbotton addTarget:self action:@selector(meClick) forControlEvents:UIControlEventTouchUpInside];
    [setbotton sizeToFit];
    UIBarButtonItem *setbotton1 = [[UIBarButtonItem alloc]initWithCustomView:setbotton];
    
    UIButton *botton = [UIButton buttonWithType:UIButtonTypeCustom];
    [botton setImage:[UIImage imageNamed:@"mine-moon-icon"] forState:UIControlStateNormal];
    [botton setImage:[UIImage imageNamed:@"mine-moon-iconClick"] forState:UIControlStateHighlighted];
    [botton addTarget:self action:@selector(moonClick) forControlEvents:UIControlEventTouchUpInside];
    [botton sizeToFit];
    UIBarButtonItem *moonbotton1 = [[UIBarButtonItem alloc]initWithCustomView:botton];
    
    
    //添加到系统
    self.navigationItem.rightBarButtonItems = @[setbotton1,moonbotton1];
    
}

- (void)meClick {
   

    XMGLogFunc
};

- (void)moonClick {
    
    
    XMGLogFunc
};



@end
