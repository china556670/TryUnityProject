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
@property (weak, nonatomic) IBOutlet UIButton *tryGCD;

@property (nonatomic, assign) int ticketSurplusCount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)tryGCD:(id)sender {
    [self goUnity];
}

- (void)goUnity {
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        UnitySendMessage("LoadScenes", "GetDate", [@"mp" UTF8String]);
        UnitySendMessage("LoadFile", "GetDate", [@"http://resourcesnode1.yuantaoit.com/mp/" UTF8String]);
        UnitySendMessage("LoadFile", "GetScenicId", [@"123" UTF8String]);
        dispatch_async(dispatch_get_main_queue(), ^{
            [[UnityManager sharedManager] showUnityWindow];
        });
    });
}


@end
