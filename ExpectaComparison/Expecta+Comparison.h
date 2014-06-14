//
//  Expecta+Comparison.h
//  Cocode
//
//  Created by Kyle Fuller on 14/06/2014.
//  Copyright (c) 2014 Cocode. All rights reserved.
//

#import "EXPMatchers+equalArray.h"
#import "EXPMatchers+equalDictionary.h"
#import "EXPMatchers+equalSet.h"

@interface ExpectaComparisonDiff : NSObject

@property (nonatomic, strong, readonly) NSArray *additions;
@property (nonatomic, strong, readonly) NSArray *removals;

- (instancetype)initWithActualObjects:(NSArray *)actualObject expectedObjects:(NSArray *)expectedObjects;

@end
