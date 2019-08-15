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


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [UnityManager initializeWithMainWindow:self.window launchOptions:launchOptions];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    [[UnityManager sharedManager].unityAppDelegate applicationWillResignActive:application];
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    [[UnityManager sharedManager].unityAppDelegate applicationDidEnterBackground:application];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    [[UnityManager sharedManager].unityAppDelegate applicationWillEnterForeground:application];
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    [[UnityManager sharedManager].unityAppDelegate applicationDidBecomeActive:application];
}


- (void)applicationWillTerminate:(UIApplication *)application {
    [[UnityManager sharedManager].unityAppDelegate applicationWillTerminate:application];
}


@end
