#import "SWGTicket.h"

@implementation SWGTicket

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"name": @"name", @"description": @"_description", @"only_packaged": @"onlyPackaged", @"available_from": @"availableFrom", @"available_until": @"availableUntil", @"trips": @"trips" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"_description", @"onlyPackaged", @"availableFrom", @"availableUntil", @"trips"];
  return [optionalProperties containsObject:propertyName];
}

@end
