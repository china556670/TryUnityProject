//
//  UnityManager.m
//  TryHighLevel
//
//  Created by 奇林刘 on 2019/8/15.
//  Copyright © 2019 奇林刘. All rights reserved.
//

#import "UnityManager.h"

@interface UnityManager ()

@property (nonatomic, strong) UIWindow *mainWindow;
@property (nonatomic, strong) UIWindow *unityWindow;

@end

@implementation UnityManager

+ (UnityManager *)sharedManager {
    static UnityManager *_sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManager = [[self alloc] init];
    });
    return _sharedManager;
}

+ (void)initializeWithMainWindow:(UIWindow *)mainWindow launchOptions:(NSDictionary *)launchOptions{
    UnityManager *manager = [UnityManager sharedManager];
    manager.mainWindow = mainWindow;
    manager.unityAppDelegate = [[UnityAppController alloc] init];
    [manager.unityAppDelegate application:[UIApplication sharedApplication] didFinishLaunchingWithOptions:launchOptions];
    [manager.unityAppDelegate applicationDidBecomeActive:[UIApplication sharedApplication]];
}

#pragma mark - Method
- (void)showUnityWindow {
    UnityPause(0);
    [self.unityWindow makeKeyAndVisible];
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        UIButton *backToNative = [UIButton buttonWithType:UIButtonTypeSystem];
        backToNative.frame = CGRectMake(10, 10, 200, 100);
        [backToNative setTitle:@"backToNative" forState:UIControlStateNormal];
        [backToNative addTarget:self action:@selector(showMainWindow) forControlEvents:UIControlEventTouchUpInside];
        
        [self.unityWindow addSubview:backToNative];
    });
}

- (void)showMainWindow {
    UnityPause(1);
    [self.mainWindow makeKeyAndVisible];
}

#pragma mark - Get
- (UIWindow *)unityWindow {
    if (!_unityWindow) {
        _unityWindow = UnityGetMainWindow();
    }
    return _unityWindow;
}


@end
