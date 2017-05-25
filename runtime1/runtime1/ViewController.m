//
//  ViewController.m
//  runtime1
//
//  Created by wdwk on 2017/5/25.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "ViewController.h"
#import "NSURL+url.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    NSURL * url=[NSURL URLWithString:@"www.baidu.com／中文"];
      NSLog(@"url:%@",url);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
