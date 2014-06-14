//
//  ExpectaSetComparisonTests.m
//
//
//  Created by Kyle Fuller on 14/06/2014.
//
//

#import "ExpectaComparisonTestCase.h"


@interface ExpectaSetComparisonTests : ExpectaComparisonTestCase
@end

@implementation ExpectaSetComparisonTests

- (void)testEqualSetSuccess {
    NSSet *actualSet = [NSSet setWithObjects:@"Kyle", @"Ash", @"Orta", nil];
    NSSet *expectedSet =  [NSSet setWithObjects:@"Kyle", @"Ash", @"Orta", nil];

    expect(actualSet).to.equalSet(expectedSet);
}

- (void)testNotToEqualArraySuccess {
    NSSet *actualSet = [NSSet setWithObjects:@"Kyle", @"Ash", @"Orta", nil];
    NSSet *expectedSet =  [NSSet setWithObjects:@"Kyle", @"Ash", nil];

    expect(actualSet).notTo.equalSet(expectedSet);
}

- (void)testMissingArrayObjectsFails {
    NSSet *actualSet = [NSSet setWithObjects:@"Kyle", @"Ash", nil];
    NSSet *expectedSet =  [NSSet setWithObjects:@"Kyle", @"Ash", @"Orta", nil];

    [self expectFailureWithDescription:@"Set is missing objects: Orta"];
    expect(actualSet).to.equalSet(expectedSet);
}


- (void)testExtraArrayObjectFails {
    NSSet *actualSet = [NSSet setWithObjects:@"Kyle", @"Ash", @"Orta", @"Mark", @"Ayaka", nil];
    NSSet *expectedSet =  [NSSet setWithObjects:@"Kyle", @"Ash", @"Orta", nil];

    [self expectFailureWithDescription:@"Set has extra objects: Mark, Ayaka"];
    expect(actualSet).to.equalSet(expectedSet);
}

@end
