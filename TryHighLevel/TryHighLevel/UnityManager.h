//
//  UnityManager.h
//  TryHighLevel
//
//  Created by 奇林刘 on 2019/8/15.
//  Copyright © 2019 奇林刘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UnityAppController.h"

@interface UnityManager : NSObject

@property (nonatomic, strong) UnityAppController *unityController;

+ (UnityManager *)sharedManager;

+ (void)initializeWithMainWindow:(UIWindow *)mainWindow launchOptions:(NSDictionary *)launchOptions;

- (void)showUnityWindow;

- (void)showMainWindow;


@end

