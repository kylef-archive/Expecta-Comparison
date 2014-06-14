Expecta+Comparison
==================

The missing comparators for Expecta. Provides expecta matchers to compare if
two collections are identical.

- `equalDictionary`

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
});
```

### License

Expecta+Comparison is available under the BSD license. See [LICENSE](LICENSE)
for more information.

