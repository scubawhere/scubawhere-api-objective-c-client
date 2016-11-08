#import "SWGBasePrice.h"

@implementation SWGBasePrice

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"owner_id": @"ownerId", @"owner_type": @"ownerType", @"price": @"price", @"from": @"from", @"until": @"until", @"decimal_price": @"decimalPrice" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"ownerId", @"ownerType", @"price", @"from", @"until", @"decimalPrice"];
  return [optionalProperties containsObject:propertyName];
}

@end
