//
//  ExpectaDictionaryComparisonTests.m
//  
//
//  Created by Kyle Fuller on 14/06/2014.
//
//

#import "ExpectaComparisonTestCase.h"


@interface ExpectaDictionaryComparisonTests : ExpectaComparisonTestCase
@end

@implementation ExpectaDictionaryComparisonTests

- (void)testEqualDictionarySuccess {
    NSDictionary *actualDictionary = @{
        @"Kyle": @"Facebook",
        @"Orta": @"Artsy",
        @"Ash": @"Artsy",
    };

    NSDictionary *expectedDictionary =  @{
        @"Kyle": @"Facebook",
        @"Orta": @"Artsy",
        @"Ash": @"Artsy",
    };

    expect(actualDictionary).to.equalDictionary(expectedDictionary);
}

- (void)testNotToEqualDictionarySuccess {
    NSDictionary *actualDictionary = @{
        @"Kyle": @"Facebook",
        @"Orta": @"Artsy",
        @"Ash": @"Artsy",
    };

    NSDictionary *expectedDictionary =  @{
        @"Kyle": @"Facebook",
        @"Ash": @"Artsy",
    };

    expect(actualDictionary).notTo.equalDictionary(expectedDictionary);
}

- (void)testMissingDictionaryKeysFails {
    NSDictionary *actualDictionary = @{
        @"Kyle": @"Facebook",
    };

    NSDictionary *expectedDictionary =  @{
        @"Kyle": @"Facebook",
        @"Orta": @"Artsy",
        @"Ash": @"Artsy",
    };

    [self expectFailureWithDescription:@"Dictionary is missing keys: Ash, Orta"];
    expect(actualDictionary).to.equalDictionary(expectedDictionary);
}


- (void)testExtraDictionaryKeyFails {
    NSDictionary *actualDictionary = @{
        @"Kyle": @"Facebook",
        @"Orta": @"Artsy",
        @"Ash": @"Artsy",
        @"Mark": @"Venmo",
        @"Ayaka": @"Venmo",
    };

    NSDictionary *expectedDictionary =  @{
        @"Kyle": @"Facebook",
        @"Orta": @"Artsy",
        @"Ash": @"Artsy",
    };

    [self expectFailureWithDescription:@"Dictionary has extra keys: Mark, Ayaka"];
    expect(actualDictionary).to.equalDictionary(expectedDictionary);
}

@end
