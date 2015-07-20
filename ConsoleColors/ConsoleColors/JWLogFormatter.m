//
//  JWLogFormatter.m
//  ConsoleColors
//
//  Created by ioswei on 15/7/20.
//  Copyright (c) 2015年 zhangjiawei. All rights reserved.
//

#import "JWLogFormatter.h"

@implementation JWLogFormatter

- (NSString *)formatLogMessage:(DDLogMessage *)logMessage {
    
    NSString *logLevel = nil;
    
    switch (logMessage.flag) {
        case DDLogFlagError:
            logLevel = @"[Error]   >";
            break;
        case DDLogFlagWarning:
            logLevel = @"[Warning] >";
            break;
        case DDLogFlagInfo:
            logLevel = @"[Info]    >";
            break;
        case DDLogFlagDebug:
            logLevel = @"[Debug]   >";
            break;
        case DDLogFlagVerbose:
            logLevel = @"[Verbose] >";
            break;
            
        default:
            logLevel = @"[Unknown] >";
            break;
    }
    
    return [NSString stringWithFormat:@"%@ [%@ %@][line %lu]: %@",
            logLevel,
            logMessage.fileName,
            logMessage.function,
            logMessage.line,
            logMessage.message];
}

@end
