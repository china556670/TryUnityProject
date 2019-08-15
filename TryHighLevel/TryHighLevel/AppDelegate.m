//
//  AppDelegate.m
//  TryHighLevel
//
//  Created by 奇林刘 on 2019/8/10.
//  Copyright © 2019 奇林刘. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (UIWindow *)unityWindow {
    if (!_unityWindow) {
        return UnityGetMainWindow();
    }
    return _unityWindow;
}

- (void)showUnityWindow {
    UnityPause(0);
    [self.unityWindow makeKeyAndVisible];
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        UIButton *backToNative = [UIButton buttonWithType:UIButtonTypeSystem];
        backToNative.frame = CGRectMake(10, 10, 200, 100);
        [backToNative setTitle:@"backToNative" forState:UIControlStateNormal];
        [backToNative addTarget:self action:@selector(hideUnityWindow) forControlEvents:UIControlEventTouchUpInside];
        
        [self.unityWindow addSubview:backToNative];
    });
}

- (void)hideUnityWindow {
    UnityPause(1);
    [self.window makeKeyAndVisible];
}

- (void)createAR {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        self.unityController = [[UnityAppController alloc] init];
        [self.unityController application:[UIApplication sharedApplication] didFinishLaunchingWithOptions:self.dic];
        [self.unityController applicationDidBecomeActive:[UIApplication sharedApplication]];
    });
    [self.window makeKeyAndVisible];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.dic = launchOptions;
    [self createAR];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    [self.unityController applicationWillResignActive:application];
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    [self.unityController applicationDidEnterBackground:application];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    [self.unityController applicationWillEnterForeground:application];
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    [self.unityController applicationDidBecomeActive:application];
}


- (void)applicationWillTerminate:(UIApplication *)application {
    [self.unityController applicationWillTerminate:application];
}


@end
