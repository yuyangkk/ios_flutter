//
//  AppDelegate.m
//  NativeFlutter_module
//
//  Created by Kaye on 2019/12/25.
//  Copyright © 2019 Kaye. All rights reserved.
//

#import "AppDelegate.h"
#import <FlutterPluginRegistrant/FlutterPluginRegistrant-umbrella.h> //Used to connect plugins.

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.flutterEngine = [[FlutterEngine alloc] initWithName:@"MyFlutterEngine"];
    // 使用默认的Flutter路由运行默认的Dart入口点。
    // 当在AppDelegate中创建的FlutterEngine上调用run时，默认Dart库的默认main()入口点函数将运行。
    [self.flutterEngine run];
    
    /// myOtherEntryPoint() 在main.dart中声明，已测试过，可行
    /// @pragma('vm:entry-point')
    /// void myOtherEntryPoint() => runApp(MyNewApp());
//    [self.flutterEngine runWithEntrypoint:@"myOtherEntryPoint"];
    
    /// myOtherEntryPoint() 在other_main中声明
    /// @pragma('vm:entry-point')
    /// void myOtherEntryPoint() => runApp(MyNewApp());
//    BOOL result = [self.flutterEngine runWithEntrypoint:@"myOtherEntryPoint" libraryURI:@"other_main.dart"];
    [GeneratedPluginRegistrant registerWithRegistry:self.flutterEngine];
    
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}


@end
