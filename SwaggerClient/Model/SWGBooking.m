#import "SWGBooking.h"

@implementation SWGBooking

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"reference": @"reference", @"lead_customer_id": @"leadCustomerId", @"agent_id": @"agentId", @"agent_reference": @"agentReference", @"source": @"source", @"price": @"price", @"discount": @"discount", @"status": @"status", @"reserved_until": @"reservedUntil", @"cancellation_fee": @"cancellationFee", @"comment": @"comment", @"parent_id": @"parentId", @"decimal_price": @"decimalPrice", @"real_decimal_price": @"realDecimalPrice", @"arrival_date": @"arrivalDate", @"created_at_local": @"createdAtLocal", @"lead_customer": @"leadCustomer", @"payments": @"payments", @"refunds": @"refunds" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"reference", @"leadCustomerId", @"agentId", @"agentReference", @"source", @"price", @"discount", @"status", @"reservedUntil", @"cancellationFee", @"comment", @"parentId", @"decimalPrice", @"realDecimalPrice", @"arrivalDate", @"createdAtLocal", @"leadCustomer", @"payments", @"refunds"];
  return [optionalProperties containsObject:propertyName];
}

@end
