//
//  ViewController.m
//  JSColorTool
//
//  Created by JsonWang on 16/1/18.
//  Copyright © 2016年 JsonWang. All rights reserved.
//  (1)新建PCH文件,添加引用地址,如:#import "UIColor+JS.h"
//  (2)配置PCH:在Build Setting->Prefix Header->项目名称/文件名+.pch,如:JSColorTool/JsColorPrefix.pch



#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(100, 100, 100, 44);
    [rightButton setBackgroundColor:[UIColor colorWithJsString:@"#030303"]];
    [rightButton setTitle:@"WHAT" forState:UIControlStateNormal];
    [rightButton setTitleColor:[UIColor colorWithJsString:@"#708c3b"] forState:UIControlStateNormal];
    rightButton.titleLabel.font = [UIFont fontWithName:@"Heiti SC" size:20.0f];
//    [rightButton addTarget:self action:@selector(settingBtnPresss:)
//          forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:rightButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
