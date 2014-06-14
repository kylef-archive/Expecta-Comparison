//
//  ExpectaArrayComparisonTests.m
//
//
//  Created by Kyle Fuller on 14/06/2014.
//
//

#import "ExpectaComparisonTestCase.h"


@interface ExpectaArrayComparisonTests : ExpectaComparisonTestCase
@end

@implementation ExpectaArrayComparisonTests

- (void)testEqualArraySuccess {
    NSArray *actualArray = @[@"Kyle", @"Ash", @"Orta"];
    NSArray *expectedArray =  @[@"Kyle", @"Ash", @"Orta"];

    expect(actualArray).to.equalArray(expectedArray);
}

- (void)testNotToEqualArraySuccess {
    NSArray *actualArray = @[@"Kyle", @"Ash", @"Orta"];
    NSArray *expectedArray =  @[@"Kyle", @"Ash"];

    expect(actualArray).notTo.equalArray(expectedArray);
}

- (void)testMissingArrayObjectsFails {
    NSArray *actualArray = @[@"Kyle", @"Ash"];
    NSArray *expectedArray =  @[@"Kyle", @"Ash", @"Orta"];

    [self expectFailureWithDescription:@"Array is missing objects: Orta"];
    expect(actualArray).to.equalArray(expectedArray);
}


- (void)testExtraArrayObjectFails {
    NSArray *actualArray = @[@"Kyle", @"Ash", @"Orta", @"Mark", @"Ayaka"];
    NSArray *expectedArray =  @[@"Kyle", @"Ash", @"Orta"];

    [self expectFailureWithDescription:@"Array has extra objects: Mark, Ayaka"];
    expect(actualArray).to.equalArray(expectedArray);
}

@end
