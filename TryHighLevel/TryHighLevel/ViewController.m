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

@property (weak, nonatomic) IBOutlet UIButton *goUnityBtn;

@end

@implementation ViewController

- (IBAction)goUnity:(id)sender {
    [[UnityManager sharedManager] showUnityWindow];
}


@end
