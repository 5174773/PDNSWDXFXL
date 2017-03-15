//
//  EssenceController.m
//  1995
//
//  Created by Lg on 2017/3/1.
//  Copyright © 2017年 Lg. All rights reserved.
//

#import "EssenceController.h"

@interface EssenceController ()

@end

@implementation EssenceController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置顶部导航栏图片
//    UIImageView *imageview = [[UIImageView alloc]init];
//    imageview.image = [UIImage imageNamed:@"MainTitle"];
//    [imageview sizeToFit];
//    self.navigationItem.titleView =imageview;
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //左边
    UIButton *botton = [UIButton buttonWithType:UIButtonTypeCustom];
    [botton setImage:[UIImage imageNamed:@"MainTagSubIcon"] forState:UIControlStateNormal];
    [botton setImage:[UIImage imageNamed:@"MainTagSubIconClick"] forState:UIControlStateHighlighted];
    [botton addTarget:self action:@selector(tagClick) forControlEvents:UIControlEventTouchUpInside];
    [botton sizeToFit];
    //添加到系统
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:botton];
    
    
    
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)tagClick{
   
    XMGLogFunc
};

@end
