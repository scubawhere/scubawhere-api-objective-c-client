#import "SWGPackage.h"

@implementation SWGPackage

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"name": @"name", @"description": @"_description", @"available_from": @"availableFrom", @"available_until": @"availableUntil", @"decimal_price": @"decimalPrice", @"trips": @"trips", @"courses": @"courses", @"accommodations": @"accommodations" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"_description", @"availableFrom", @"availableUntil", @"decimalPrice", @"trips", @"courses", @"accommodations"];
  return [optionalProperties containsObject:propertyName];
}

@end
