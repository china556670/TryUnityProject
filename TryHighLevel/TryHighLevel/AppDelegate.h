//
//  AppDelegate.h
//  TryHighLevel
//
//  Created by 奇林刘 on 2019/8/10.
//  Copyright © 2019 奇林刘. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UnityManager.h"

@class ViewController, UnityAppController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ViewController *viewController;

@property (strong, nonatomic) UIWindow *unityWindow;
@property (strong, nonatomic) UnityAppController *unityController;

@property (strong, nonatomic) NSDictionary *dic;

- (void)showUnityWindow;
- (void)hideUnityWindow;
- (void)createAR;

@end
