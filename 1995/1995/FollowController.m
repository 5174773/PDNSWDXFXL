//
//  FollowController.m
//  1995
//
//  Created by Lg on 2017/3/1.
//  Copyright © 2017年 Lg. All rights reserved.
//

#import "FollowController.h"
#import "RecommendFollowController.h"
#import "Login.h"

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
    RecommendFollowController *recommend = [[RecommendFollowController alloc]init];
    
    [self.navigationController pushViewController:recommend animated:YES];
    
};
- (IBAction)Signin:(id)sender {
 
    Login *login = [[Login alloc]init];
    
    [self presentViewController:login animated:YES completion:nil];
   
   
}


@end
