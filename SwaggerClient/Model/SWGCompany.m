#import "SWGCompany.h"

@implementation SWGCompany

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"name": @"name", @"description": @"_description", @"address_1": @"address1", @"address_2": @"address2", @"city": @"city", @"county": @"county", @"postcode": @"postcode", @"country_id": @"countryId", @"currency_id": @"currencyId", @"business_email": @"businessEmail", @"business_phone": @"businessPhone", @"vat_number": @"vatNumber", @"registration_number": @"registrationNumber", @"latitude": @"latitude", @"longitude": @"longitude", @"timezone": @"timezone", @"contact": @"contact", @"website": @"website" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"_description", @"address1", @"address2", @"city", @"county", @"postcode", @"countryId", @"currencyId", @"businessEmail", @"businessPhone", @"vatNumber", @"registrationNumber", @"latitude", @"longitude", @"timezone", @"contact", @"website"];
  return [optionalProperties containsObject:propertyName];
}

@end
