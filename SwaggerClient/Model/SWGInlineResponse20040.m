#import "SWGInlineResponse20040.h"

@implementation SWGInlineResponse20040

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"daterange": @"daterange", @"accommodations": @"accommodations", @"accommodation_toal": @"accommodationToal", @"addons": @"addons", @"addons_toal": @"addonsToal", @"courses": @"courses", @"courses_toal": @"coursesToal", @"fees": @"fees", @"fees_toal": @"feesToal", @"packages": @"packages", @"package_toal": @"packageToal", @"tickets": @"tickets", @"ticket_toal": @"ticketToal" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"daterange", @"accommodations", @"accommodationToal", @"addons", @"addonsToal", @"courses", @"coursesToal", @"fees", @"feesToal", @"packages", @"packageToal", @"tickets", @"ticketToal"];
  return [optionalProperties containsObject:propertyName];
}

@end
