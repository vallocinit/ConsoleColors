//
//  ViewController.m
//  ConsoleColors
//
//  Created by ioswei on 15/7/20.
//  Copyright (c) 2015年 zhangjiawei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DDLogError(@"Error");
    DDLogWarn(@"Warning");
    DDLogInfo(@"Info");
    DDLogDebug(@"Debug");
    DDLogVerbose(@"Verbose");
}

@end
