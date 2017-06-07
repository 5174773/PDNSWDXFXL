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
    
    
    //CELL的内边距
    self.tableView.sectionHeaderHeight = 0;
    self.tableView.sectionFooterHeight = 10;
    
    self.tableView.contentInset = UIEdgeInsetsMake(-25, 0, 0, 0);
    
    
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

- (instancetype)init
{
    return [self initWithStyle:UITableViewStyleGrouped];
}


//数据源方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 1.确定重用标识符
    static NSString *ID = @"cell";
    //重缓存池中取
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    // 如果空就创建
    if (!cell) {
        cell = [[UITableViewCell alloc]init];
        
    }
    
    //设置数据
    if (indexPath.section == 0) {
        cell.textLabel.text = @"登录/注册";
        cell.imageView.image = [UIImage imageNamed:@"setup-head-default"];
    }
    
    if (indexPath.section == 1) {
        cell.textLabel.text = @"离线下载";
    }
    
    if (indexPath.section == 2) {
        
        
    }
    
    
    return cell;
    
}

//tableview的代理方法
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    if (indexPath.section == 2) return 200;
    return 44;
    
    
    
}







@end
