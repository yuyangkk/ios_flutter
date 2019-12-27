//
//  AppDelegate.h
//  NativeFlutter_module
//
//  Created by Kaye on 2019/12/25.
//  Copyright © 2019 Kaye. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Flutter;
@import FlutterPluginRegistrant; //Used to connect plugins.


@interface AppDelegate2 : UIResponder <UIApplicationDelegate,FlutterAppLifeCycleProvider>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong) FlutterEngine *flutterEngine;

@end

