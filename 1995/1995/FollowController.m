//
//  FollowController.m
//  1995
//
//  Created by Lg on 2017/3/1.
//  Copyright © 2017年 Lg. All rights reserved.
//

#import "FollowController.h"

@interface FollowController ()

@end

@implementation FollowController

- (void)viewDidLoad {
    [super viewDidLoad];
   self.navigationItem.title =@"我的关注";
    
    //左边
    UIButton *botton = [UIButton buttonWithType:UIButtonTypeCustom];
    [botton setImage:[UIImage imageNamed:@"friendsRecommentIcon"] forState:UIControlStateNormal];
    [botton setImage:[UIImage imageNamed:@"friendsRecommentIconClick"] forState:UIControlStateHighlighted];
    [botton addTarget:self action:@selector(friendsClick) forControlEvents:UIControlEventTouchUpInside];
    [botton sizeToFit];
    //添加到系统
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:botton];
}

- (void)friendsClick {
    
    XMGLogFunc
    
};


@end
