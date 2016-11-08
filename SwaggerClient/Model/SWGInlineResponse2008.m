#import "SWGInlineResponse2008.h"

@implementation SWGInlineResponse2008

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"status": @"status", @"decimal_price": @"decimalPrice", @"accommodation_decimal_price": @"accommodationDecimalPrice", @"packageafacde_id": @"packageafacdeId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"status", @"decimalPrice", @"accommodationDecimalPrice", @"packageafacdeId"];
  return [optionalProperties containsObject:propertyName];
}

@end
