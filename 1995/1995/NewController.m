//
//  NewController.m
//  1995
//
//  Created by Lg on 2017/3/1.
//  Copyright © 2017年 Lg. All rights reserved.
//

#import "NewController.h"

@interface NewController ()

@end

@implementation NewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    self.navigationItem.title = @"新帖";
}

@end
