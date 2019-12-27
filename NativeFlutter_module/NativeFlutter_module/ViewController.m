//
//  ViewController.m
//  NativeFlutter_module
//
//  Created by Kaye on 2019/12/25.
//  Copyright © 2019 Kaye. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "AppDelegate2.h"
@import Flutter;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *flutterButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 120, 40)];
    [flutterButton setTitle:@"show flutter" forState:UIControlStateNormal];
    [flutterButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [flutterButton addTarget:self action:@selector(flutterButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:flutterButton];
    
    UIButton *flutterButton2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 200, 40)];
    [flutterButton2 setTitle:@"隐式创建引擎" forState:UIControlStateNormal];
    [flutterButton2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [flutterButton2 addTarget:self action:@selector(createFlutterViewControllerWithImplicitFlutterEngine) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:flutterButton2];
    
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)flutterButtonAction {
    // 获取引擎
    FlutterEngine *flutterEngine = [(AppDelegate *)[UIApplication sharedApplication].delegate flutterEngine];
//    FlutterEngine *flutterEngine = [(AppDelegate2 *)[UIApplication sharedApplication].delegate flutterEngine];
    // 创建FlutterViewController
    FlutterViewController *flutterVC = [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
    // 跳转
    [self.navigationController pushViewController:flutterVC animated:YES];
    // 当然你也可以使用下面的方法跳转
    //[self presentViewController:flutterVC animated:YES completion:nil];
}

- (void)createFlutterViewControllerWithImplicitFlutterEngine {
    // 创建FlutterViewController
    FlutterViewController *flutterVC = [[FlutterViewController alloc] initWithProject:nil nibName:nil bundle:nil];
    // 跳转
    [self.navigationController pushViewController:flutterVC animated:YES];
}

@end
