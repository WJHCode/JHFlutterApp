//
//  RootViewController.m
//  JHFlutterApp
//
//  Created by 王建华 on 2021/3/5.
//

#import "RootViewController.h"
#import <Flutter/Flutter.h>

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
}

-(void)setUpView{
    CGFloat btnW = 200, btnH = btnW, btnX = ([UIScreen mainScreen].bounds.size.width - btnW)/2, btnY = 200;
    UIButton *clickButton = [[UIButton alloc] initWithFrame:CGRectMake(btnX, btnY, btnW, btnH)];
    [clickButton setTitle:@"Flutter Page" forState:UIControlStateNormal];
    [clickButton setBackgroundColor:[UIColor orangeColor]];
    [clickButton addTarget:self action:@selector(nextPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clickButton];
}

-(void)nextPage{
    FlutterViewController *flutterVc = [FlutterViewController new];
    [self.navigationController pushViewController:flutterVc animated:YES];
}
@end
