//
//  ExpectaComparisonTestCase.m
//  ExpectaComparisonTests
//
//  Created by Kyle Fuller on 14/06/2014.
//
//

#import "ExpectaComparisonTestCase.h"

@interface ExpectaComparisonTestCase ()

@property (nonatomic, strong) NSMutableArray *expectedFailureDescriptions;

@end

@implementation ExpectaComparisonTestCase

- (void)setUp {
    [super setUp];

    self.expectedFailureDescriptions = [NSMutableArray array];
}

- (void)tearDown {
    [super tearDown];

    expect([self.expectedFailureDescriptions count]).to.equal(0);
}

- (void)recordFailureWithDescription:(NSString *)description inFile:(NSString *)filename atLine:(NSUInteger)lineNumber expected:(BOOL)expected {
    if ([self.expectedFailureDescriptions containsObject:description] == NO) {
        [super recordFailureWithDescription:description inFile:filename atLine:lineNumber expected:expected];
    } else {
        [self.expectedFailureDescriptions removeObject:description];
    }
}

- (void)expectFailureWithDescription:(NSString *)description {
    [self.expectedFailureDescriptions addObject:description];
}


@end
