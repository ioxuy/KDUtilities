//
//  NSDictionary+KDUtilities.m
//  BuddyBook
//
//  Created by Blankwonder on 8/16/13.
//  Copyright (c) 2013 Suixing Tech. All rights reserved.
//

#import "NSDictionary+KDUtilities.h"

@implementation NSDictionary (KDUtilities)

- (NSDictionary *)KD_subdictionaryWithKeys:(NSArray *)keys {
    NSMutableDictionary *newDic = [NSMutableDictionary dictionaryWithCapacity:keys.count];
    for (id key in keys) {
        id obj = self[key];
        if (obj) {
            newDic[key] = obj;
        }
    }
    return [NSDictionary dictionaryWithDictionary:newDic];
}

- (NSDictionary *)KD_reversedDictionary {
    NSMutableDictionary *newDic = [NSMutableDictionary dictionaryWithCapacity:self.count];
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        newDic[obj] = key;
    }];
    
    return newDic;
}

@end
