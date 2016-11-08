#import "SWGCustomer.h"

@implementation SWGCustomer

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"email": @"email", @"firstname": @"firstname", @"lastname": @"lastname", @"verified": @"verified", @"birthday": @"birthday", @"gender": @"gender", @"address_1": @"address1", @"address_2": @"address2", @"city": @"city", @"county": @"county", @"postcode": @"postcode", @"country_id": @"countryId", @"phone": @"phone", @"last_dive": @"lastDive", @"number_of_dives": @"numberOfDives", @"chest_size": @"chestSize", @"shoe_size": @"shoeSize", @"height": @"height", @"cylinder_size": @"cylinderSize", @"notes": @"notes", @"unsubscribed": @"unsubscribed", @"country": @"country" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"email", @"firstname", @"lastname", @"verified", @"birthday", @"gender", @"address1", @"address2", @"city", @"county", @"postcode", @"countryId", @"phone", @"lastDive", @"numberOfDives", @"chestSize", @"shoeSize", @"height", @"cylinderSize", @"notes", @"unsubscribed", @"country"];
  return [optionalProperties containsObject:propertyName];
}

@end
