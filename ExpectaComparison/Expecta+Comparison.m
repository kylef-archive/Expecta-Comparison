//
//  Expecta+Comparison.m
//  Cocode
//
//  Created by Kyle Fuller on 14/06/2014.
//  Copyright (c) 2014 Cocode. All rights reserved.
//

#import "Expecta+Comparison.h"

@implementation ExpectaComparisonDiff

- (instancetype)initWithActualObjects:(NSArray *)actualObjects expectedObjects:(NSArray *)expectedObjects {
    if (self = [super init]) {
        NSSet *actual = [NSSet setWithArray:actualObjects];
        NSSet *expected = [NSSet setWithArray:expectedObjects];

        if ([actual isEqualToSet:expected] == NO) {
            NSMutableSet *missingObjects = [expected mutableCopy];
            [missingObjects minusSet:actual];

            NSMutableSet *extraObjects = [actual mutableCopy];
            [extraObjects minusSet:expected];

            _additions = [extraObjects allObjects];
            _removals = [missingObjects allObjects];
        }
    }

    return self;
}

@end
