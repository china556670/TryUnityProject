//
//  AppDelegate.m
//  TryHighLevel
//
//  Created by 奇林刘 on 2019/8/10.
//  Copyright © 2019 奇林刘. All rights reserved.
//

#import "AppDelegate.h"
#import "UnityManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)createUnityDelegateWithOptions:(NSDictionary *)launchOptions {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        self.unityController = [[UnityAppController alloc] init];
        [self.unityController application:[UIApplication sharedApplication] didFinishLaunchingWithOptions:launchOptions];
        [self.unityController applicationDidBecomeActive:[UIApplication sharedApplication]];
    });
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self createUnityDelegateWithOptions:launchOptions];
    [[UnityManager sharedManager] setupMainWindow:self.window];
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
