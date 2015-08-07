//
//  NSMutableDictionary+Description.m
//  LXToolsTest
//
//  Created by FairyLand on 14-11-14.
//  Copyright (c) 2014年 fulan. All rights reserved.
//

#import "NSMutableDictionary+Description.h"

@implementation NSMutableDictionary (Description)


#ifdef DEBUG

- (NSString *)description
{
    NSMutableString *str_result = [[NSMutableString alloc]init];
    
    if (self == nil || self.count <= 0)
    {
        
        [str_result appendString:@"此字典为空或不存在!\n"];
        
    }else{
        
        [str_result appendString:@"\n/**********************************/\n"];
        [str_result appendString:[NSString stringWithFormat:@"可变字典长度:%lu key/value pairs\n\n",(int)self.count]];
        
        for (id idd in self.allKeys)
        {
            if ([self[idd] isKindOfClass:[NSDictionary class]])
            {
                NSDictionary *dict_t = (NSDictionary *)self[idd];
                [str_result appendFormat:@"dict[%@] = -->>%@<<--\n\n",idd,dict_t.description];
            }else if ([self[idd] isKindOfClass:[NSMutableDictionary class]])
            {
                NSMutableDictionary *multiDict_t = (NSMutableDictionary *)self[idd];
                [str_result appendFormat:@"dict[%@] = -->>%@<<--\n\n",idd,multiDict_t.description];
            }else if ([self[idd] isKindOfClass:[NSArray class]])
            {
                NSArray *array_t = (NSArray *)self[idd];
                [str_result appendFormat:@"dict[%@] = -->>%@<<--\n\n",idd,array_t.description];
            }else if ([self[idd] isKindOfClass:[NSMutableArray class]])
            {
                NSMutableArray *multiArray_t = (NSMutableArray *)self[idd];
                [str_result appendFormat:@"dict[%@] = -->>%@<<--\n\n",idd,multiArray_t.description];
            }else{
                [str_result appendFormat:@"dict[%@] = -->>%@<<--\n\n",idd,self[idd]];
            }
            
        }
        
        [str_result appendString:@"\n-----------------------<over>\n\n"];
        
    }
    
    return str_result;
    
}


#endif


@end
