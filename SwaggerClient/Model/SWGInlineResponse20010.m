#import "SWGInlineResponse20010.h"

@implementation SWGInlineResponse20010

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"status": @"status", @"id": @"_id", @"addons": @"addons", @"decimal_price": @"decimalPrice", @"boatroom_id": @"boatroomId", @"package_decimal_price": @"packageDecimalPrice", @"course_decimal_price": @"courseDecimalPrice", @"ticket_decimal_price": @"ticketDecimalPrice", @"packagefacade_id": @"packagefacadeId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"status", @"_id", @"addons", @"decimalPrice", @"boatroomId", @"packageDecimalPrice", @"courseDecimalPrice", @"ticketDecimalPrice", @"packagefacadeId"];
  return [optionalProperties containsObject:propertyName];
}

@end
