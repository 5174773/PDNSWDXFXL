//
//  Login.m
//  1995
//
//  Created by Lg on 2017/3/15.
//  Copyright © 2017年 Lg. All rights reserved.
//

#import "Login.h"
#import "AFViewShaker.h"


@interface Login ()
@property (nonatomic, strong) IBOutletCollection(UIView) NSArray * allTextFields;
@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray * allButtons;
@property (nonatomic, strong) AFViewShaker * viewShaker;
@end


@implementation Login

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewShaker = [[AFViewShaker alloc] initWithViewsArray:self.allTextFields];
    
    for (UIButton * button in self.allButtons) {
        button.layer.borderColor = [[UIColor whiteColor] CGColor];
        button.layer.borderWidth = 1;
        button.layer.cornerRadius = 5;
    }
    
    //返回
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"login_close_icon"] forState:UIControlStateNormal];
    [button setFrame:CGRectMake(50, 50, 10, 10)];
    [button addTarget:self action:@selector(Return) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    
}

-(void)Return
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


#pragma mark - Actions

- (IBAction)onShakeOneAction:(UIButton *)sender {
    [[[AFViewShaker alloc] initWithView:self.allButtons[0]] shake];
    [self.viewShaker shake];
}


- (IBAction)onShakeAllAction:(UIButton *)sender {
    [self.viewShaker shake];
}


- (IBAction)onShakeAllWithBlockAction:(UIButton *)sender {
//    [self.viewShaker shakeWithDuration:0.6 completion:^{
//        [[[UIAlertView alloc] initWithTitle:@"Hello"
//                                    message:@"This is completions block"
//                                   delegate:self
//                          cancelButtonTitle:@"OK"
//                          otherButtonTitles:nil] show];
//    }];
}


//返回





@end
