//
//  ViewController.m
//  TryHighLevel
//
//  Created by 奇林刘 on 2019/8/10.
//  Copyright © 2019 奇林刘. All rights reserved.
//

#import "ViewController.h"
#import "UnityManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)goUnity:(UIButton *)sender {
    const char *direction = @(sender.tag).stringValue.UTF8String;
    UnitySendMessage("Cube", "rotateTo", direction);
    [[UnityManager sharedManager] showUnityWindow];
}


@end
