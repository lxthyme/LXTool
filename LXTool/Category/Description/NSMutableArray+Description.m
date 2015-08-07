//
//  NSMutableArray+Description.m
//  LXToolsTest
//
//  Created by FairyLand on 14-11-14.
//  Copyright (c) 2014年 fulan. All rights reserved.
//

#import "NSMutableArray+Description.h"

@implementation NSMutableArray (Description)


#ifdef DEBUG


- (NSString *)description
{
    NSMutableString *str_result = [[NSMutableString alloc]init];
    
    if (self == nil || self.count <= 0)
    {
        
        [str_result appendString:@"此数组为空或不存在!\n"];
        
    }else{
        
        [str_result appendString:@"\n/**********************************/\n"];
        [str_result appendString:[NSString stringWithFormat:@"可变数组长度:%lu\n\n",self.count]];
        
        for (NSInteger i = 0; i < self.count; i ++)
        {
            if ([self[i] isKindOfClass:[NSDictionary class]])
            {
                NSDictionary *dict_t = (NSDictionary *)self[i];
                [str_result appendFormat:@"array[%d] =   -->>%@<<--\n",(int)i,dict_t.description];
            }else if ([self[i] isKindOfClass:[NSMutableDictionary class]])
            {
                NSMutableDictionary *multiDict_t = (NSMutableDictionary *)self[i];
                [str_result appendFormat:@"array[%d] =   -->>%@<<--\n",(int)i,multiDict_t.description];
            }else if ([self[i] isKindOfClass:[NSArray class]])
            {
                NSArray *array_t = (NSArray *)self[i];
                [str_result appendFormat:@"array[%d] =   -->>%@<<--\n",(int)i,array_t.description];
            }else if ([self[i] isKindOfClass:[NSMutableArray class]])
            {
                NSMutableArray *multiArray_t = (NSMutableArray *)self[i];
                [str_result appendFormat:@"array[%d] =   -->>%@<<--\n",(int)i,multiArray_t.description];
            }else{
                [str_result appendFormat:@"array[%d] =   -->>%@<<--\n",(int)i,self[i]];
            }
            
        }
        
        [str_result appendString:@"\n-----------------------<over>\n\n"];
        
    }
    
    return str_result;
    
}

#endif

@end
