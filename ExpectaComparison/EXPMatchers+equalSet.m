//
//  EXPMatchers+equalSet.m
//  Cocode
//
//  Created by Kyle Fuller on 14/06/2014.
//  Copyright (c) 2014 Cocode. All rights reserved.
//

#import "Expecta+Comparison.h"

EXPMatcherImplementationBegin(equalSet, (NSSet * expected)) {
    match(^ BOOL {
        return [actual isEqualToSet:expected];
    });

    failureMessageForTo(^ NSString * {
        NSString *message = [NSString stringWithFormat:@"expected: %@, got: %@", EXPDescribeObject(expected), EXPDescribeObject(actual)];

        ExpectaComparisonDiff *diff = [[ExpectaComparisonDiff alloc] initWithActualObjects:[actual allObjects] expectedObjects:[expected allObjects]];

        if ([diff.removals count] > 0) {
            message = [NSString stringWithFormat:@"Set is missing objects: %@", [diff.removals componentsJoinedByString:@", "]];
        } else if ([diff.additions count] > 0) {
            message = [NSString stringWithFormat:@"Set has extra objects: %@", [diff.additions componentsJoinedByString:@", "]];
        }

        return message;
    });

    failureMessageForNotTo(^ NSString * {
        return [NSString stringWithFormat:@"expected: not %@, got: %@", EXPDescribeObject(expected), EXPDescribeObject(actual)];
    });
}

EXPMatcherImplementationEnd
