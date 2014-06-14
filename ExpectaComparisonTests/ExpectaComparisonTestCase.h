//
//  ExpectaComparisonTestCase.h
//  ExpectaComparisonTests
//
//  Created by Kyle Fuller on 14/06/2014.
//
//

#import <XCTest/XCTest.h>
#define EXP_SHORTHAND
#import <Expecta/Expecta.h>
#import <Expecta+Comparison/Expecta+Comparison.h>

@interface ExpectaComparisonTestCase : XCTestCase

- (void)expectFailureWithDescription:(NSString *)description;

@end
