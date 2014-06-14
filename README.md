Expecta+Comparison
==================

The missing comparators for Expecta. Provides expecta matchers to compare
collections in your tests.

We add the following matchers:

- `equalArray`
- `equalDictionary`
- `equalSet`

These provide easier to understand test failures showing the actual difference
between the actual and expected result.

### Example

#### Before

```
expected: {Kyle = Facebook; Ash = Artsy; Orta = Artsy; Dennis = Cocode;}, got: {Kyle = Facebook; Dennis = Cocode;}
```

#### After

```
Dictionary is missing keys: Ash, Orta
```

### Installation

```ruby
target 'PalaverTests' do
  pod 'Expecta+Comparison'
end
```

### Usage

```objective-c
#import <Expecta+Comparison/Expecta+Comparison.h>

describe(@"a person", ^{
  __block Person *person;

  it(@"should be covertable to a dictionary", ^{
    NSDictionary *dictionary = [person toDictionary];
    NSDictionary *actualDictionary = @{@"key": @"value", @"foo": @"bar"};

    expect(dictionary).to.equalDictionary(actualDictionary);
  });

  it(@"should have a list of companies they worked for", ^{
    NSArray *companies = @[@"Cocode", @"Facebook"];

    expect(person.companies).to.equalArray(companies);
  });
});
```

### License

Expecta+Comparison is available under the BSD license. See [LICENSE](LICENSE)
for more information.

