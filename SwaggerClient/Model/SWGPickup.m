#import "SWGPickup.h"

@implementation SWGPickup

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"booking_id": @"bookingId", @"location": @"location", @"date": @"date", @"time": @"time", @"quantity": @"quantity" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"bookingId", @"location", @"date", @"time", @"quantity"];
  return [optionalProperties containsObject:propertyName];
}

@end
