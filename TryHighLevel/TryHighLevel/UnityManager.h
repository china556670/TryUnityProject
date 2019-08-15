//
//  UnityManager.h
//  TryHighLevel
//
//  Created by 奇林刘 on 2019/8/15.
//  Copyright © 2019 奇林刘. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UnityManager : NSObject

@property (nonatomic, strong) UnityAppController *unityAppDelegate;

+ (UnityManager *)sharedManager;

- (void)setupMainWindow:(UIWindow *)mainWindow launchOptions:(NSDictionary *)launchOptions;

- (void)showUnityWindow;

- (void)showMainWindow;


@end

