//
//  NSDate+Description.m
//  LXToolsTest
//
//  Created by FairyLand on 14-11-14.
//  Copyright (c) 2014年 fulan. All rights reserved.
//

#import "NSDate+Description.h"

@implementation NSDate (Description)


#ifdef DEBUG

- (NSString *)description
{
    NSMutableString *multiString_t = [[NSMutableString alloc]init];
    
    NSDate *date_t = (NSDate *)self;
    NSDateFormatter *formatter_t = [[NSDateFormatter alloc]init];
    
    [formatter_t setDateFormat:@"yyyy"];
    [multiString_t appendFormat:@"年:%@",[formatter_t stringFromDate:date_t]];
    
    [formatter_t setDateFormat:@"MM"];
    [multiString_t appendFormat:@"月:%@",[formatter_t stringFromDate:date_t]];
    
    [formatter_t setDateFormat:@"dd"];
    [multiString_t appendFormat:@"日:%@",[formatter_t stringFromDate:date_t]];
    
    [formatter_t setDateFormat:@"hh"];
    [multiString_t appendFormat:@"时:%@",[formatter_t stringFromDate:date_t]];
    
    [formatter_t setDateFormat:@"mm"];
    [multiString_t appendFormat:@"分:%@",[formatter_t stringFromDate:date_t]];
    
    [formatter_t setDateFormat:@"ss"];
    [multiString_t appendFormat:@"秒:%@",[formatter_t stringFromDate:date_t]];
    
    return multiString_t;
}

#endif


@end
